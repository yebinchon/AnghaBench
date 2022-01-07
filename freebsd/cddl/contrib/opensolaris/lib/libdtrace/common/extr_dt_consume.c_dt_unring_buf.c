
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dtrace_hdl_t ;
struct TYPE_3__ {scalar_t__ dtbd_oldest; int dtbd_size; char* dtbd_data; } ;
typedef TYPE_1__ dtrace_bufdesc_t ;


 int assert (int) ;
 int bcopy (char*,char*,int) ;
 int bzero (char*,int) ;
 char* dt_alloc (int *,int) ;
 int dt_free (int *,char*) ;

__attribute__((used)) static int
dt_unring_buf(dtrace_hdl_t *dtp, dtrace_bufdesc_t *buf)
{
 int misalign;
 char *newdata, *ndp;

 if (buf->dtbd_oldest == 0)
  return (0);

 misalign = buf->dtbd_oldest & (sizeof (uint64_t) - 1);
 newdata = ndp = dt_alloc(dtp, buf->dtbd_size + misalign);

 if (newdata == ((void*)0))
  return (-1);

 assert(0 == (buf->dtbd_size & (sizeof (uint64_t) - 1)));

 bzero(ndp, misalign);
 ndp += misalign;

 bcopy(buf->dtbd_data + buf->dtbd_oldest, ndp,
     buf->dtbd_size - buf->dtbd_oldest);
 ndp += buf->dtbd_size - buf->dtbd_oldest;

 bcopy(buf->dtbd_data, ndp, buf->dtbd_oldest);

 dt_free(dtp, buf->dtbd_data);
 buf->dtbd_oldest = 0;
 buf->dtbd_data = newdata;
 buf->dtbd_size += misalign;

 return (0);
}
