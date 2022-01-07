
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dtrace_hdl_t ;
struct TYPE_3__ {int dtbd_size; int dtbd_oldest; char* dtbd_data; } ;
typedef TYPE_1__ dtrace_bufdesc_t ;


 int bcopy (char*,char*,int) ;
 int bzero (char*,int) ;
 char* dt_alloc (int *,int ) ;
 int dt_free (int *,char*) ;

__attribute__((used)) static void
dt_realloc_buf(dtrace_hdl_t *dtp, dtrace_bufdesc_t *buf, int cursize)
{
 uint64_t used = buf->dtbd_size - buf->dtbd_oldest;
 if (used < cursize / 2) {
  int misalign = buf->dtbd_oldest & (sizeof (uint64_t) - 1);
  char *newdata = dt_alloc(dtp, used + misalign);
  if (newdata == ((void*)0))
   return;
  bzero(newdata, misalign);
  bcopy(buf->dtbd_data + buf->dtbd_oldest,
      newdata + misalign, used);
  dt_free(dtp, buf->dtbd_data);
  buf->dtbd_oldest = misalign;
  buf->dtbd_size = used + misalign;
  buf->dtbd_data = newdata;
 }
}
