
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int err; int iomode; } ;
typedef TYPE_1__ br_ssl_engine_context ;


 int BR_ERR_BAD_PARAM ;
 int BR_IO_FAILED ;
 int MAX_IN_OVERHEAD ;
 int MAX_OUT_OVERHEAD ;
 int br_ssl_engine_set_buffers_bidi (TYPE_1__*,void*,size_t,unsigned char*,size_t) ;

void
br_ssl_engine_set_buffer(br_ssl_engine_context *rc,
 void *buf, size_t buf_len, int bidi)
{
 if (buf == ((void*)0)) {
  br_ssl_engine_set_buffers_bidi(rc, ((void*)0), 0, ((void*)0), 0);
 } else {
  if (bidi) {
   size_t w;

   if (buf_len < (512 + MAX_IN_OVERHEAD
    + 512 + MAX_OUT_OVERHEAD))
   {
    rc->iomode = BR_IO_FAILED;
    rc->err = BR_ERR_BAD_PARAM;
    return;
   } else if (buf_len < (16384 + MAX_IN_OVERHEAD
    + 512 + MAX_OUT_OVERHEAD))
   {
    w = 512 + MAX_OUT_OVERHEAD;
   } else {
    w = buf_len - (16384 + MAX_IN_OVERHEAD);
   }
   br_ssl_engine_set_buffers_bidi(rc,
    buf, buf_len - w,
    (unsigned char *)buf + w, w);
  } else {
   br_ssl_engine_set_buffers_bidi(rc,
    buf, buf_len, ((void*)0), 0);
  }
 }
}
