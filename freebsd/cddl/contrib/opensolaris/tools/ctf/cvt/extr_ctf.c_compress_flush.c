
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ avail_out; scalar_t__ next_out; } ;
struct TYPE_5__ {TYPE_3__ rb_zstr; scalar_t__ rb_ptr; } ;
typedef TYPE_1__ resbuf_t ;
typedef scalar_t__ caddr_t ;


 int Z_BUF_ERROR ;
 int Z_FINISH ;
 int Z_FULL_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int deflate (TYPE_3__*,int) ;
 int parseterminate (char*,int ) ;
 int rbzs_grow (TYPE_1__*) ;
 int zError (int) ;

__attribute__((used)) static void
compress_flush(resbuf_t *rb, int type)
{
 int rc;

 for (;;) {
  if (rb->rb_zstr.avail_out == 0)
   rbzs_grow(rb);

  rc = deflate(&rb->rb_zstr, type);
  if ((type == Z_FULL_FLUSH && rc == Z_BUF_ERROR) ||
      (type == Z_FINISH && rc == Z_STREAM_END))
   break;
  else if (rc != Z_OK)
   parseterminate("zlib finish failed: %s", zError(rc));
 }
 rb->rb_ptr = (caddr_t)rb->rb_zstr.next_out;
}
