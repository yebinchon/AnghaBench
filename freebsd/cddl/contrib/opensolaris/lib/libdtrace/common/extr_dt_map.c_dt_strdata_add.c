
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int fmt ;
struct TYPE_6__ {int dtrd_format; int dtrd_action; } ;
typedef TYPE_1__ dtrace_recdesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_7__ {int dtfd_format; void** dtfd_string; scalar_t__ dtfd_length; } ;
typedef TYPE_2__ dtrace_fmtdesc_t ;




 int DTRACEIOC_FORMAT ;
 int EDT_NOMEM ;
 int bcopy (void**,void**,size_t) ;
 int bzero (TYPE_2__*,int) ;
 void** dt_alloc (int *,scalar_t__) ;
 int dt_free (int *,void**) ;
 int dt_ioctl (int *,int ,TYPE_2__*) ;
 int dt_set_errno (int *,int ) ;
 void** dt_zalloc (int *,size_t) ;
 void* dtrace_printa_create (int *,void**) ;
 void* dtrace_printf_create (int *,void**) ;
 int errno ;
 int free (void**) ;

__attribute__((used)) static int
dt_strdata_add(dtrace_hdl_t *dtp, dtrace_recdesc_t *rec, void ***data, int *max)
{
 int maxformat, rval;
 dtrace_fmtdesc_t fmt;
 void *result;

 if (rec->dtrd_format == 0)
  return (0);

 if (rec->dtrd_format <= *max &&
     (*data)[rec->dtrd_format - 1] != ((void*)0)) {
  return (0);
 }

 bzero(&fmt, sizeof (fmt));
 fmt.dtfd_format = rec->dtrd_format;
 fmt.dtfd_string = ((void*)0);
 fmt.dtfd_length = 0;

 if (dt_ioctl(dtp, DTRACEIOC_FORMAT, &fmt) == -1)
  return (dt_set_errno(dtp, errno));

 if ((fmt.dtfd_string = dt_alloc(dtp, fmt.dtfd_length)) == ((void*)0))
  return (dt_set_errno(dtp, EDT_NOMEM));

 if (dt_ioctl(dtp, DTRACEIOC_FORMAT, &fmt) == -1) {
  rval = dt_set_errno(dtp, errno);
  free(fmt.dtfd_string);
  return (rval);
 }

 while (rec->dtrd_format > (maxformat = *max)) {
  int new_max = maxformat ? (maxformat << 1) : 1;
  size_t nsize = new_max * sizeof (void *);
  size_t osize = maxformat * sizeof (void *);
  void **new_data = dt_zalloc(dtp, nsize);

  if (new_data == ((void*)0)) {
   dt_free(dtp, fmt.dtfd_string);
   return (dt_set_errno(dtp, EDT_NOMEM));
  }

  bcopy(*data, new_data, osize);
  free(*data);

  *data = new_data;
  *max = new_max;
 }

 switch (rec->dtrd_action) {
 case 129:
  result = fmt.dtfd_string;
  break;
 case 128:
  result = dtrace_printa_create(dtp, fmt.dtfd_string);
  dt_free(dtp, fmt.dtfd_string);
  break;
 default:
  result = dtrace_printf_create(dtp, fmt.dtfd_string);
  dt_free(dtp, fmt.dtfd_string);
  break;
 }

 if (result == ((void*)0))
  return (-1);

 (*data)[rec->dtrd_format - 1] = result;

 return (0);
}
