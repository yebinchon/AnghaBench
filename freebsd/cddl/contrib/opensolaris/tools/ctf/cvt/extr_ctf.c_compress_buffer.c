
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_5__ {scalar_t__ avail_out; size_t avail_in; int * next_out; void* next_in; } ;
struct TYPE_4__ {scalar_t__ rb_ptr; scalar_t__ rb_size; scalar_t__ rb_base; TYPE_3__ rb_zstr; } ;
typedef TYPE_1__ resbuf_t ;
typedef scalar_t__ caddr_t ;
typedef int Bytef ;


 int Z_NO_FLUSH ;
 int Z_OK ;
 int deflate (TYPE_3__*,int ) ;
 int parseterminate (char*,int ) ;
 int rbzs_grow (TYPE_1__*) ;
 int zError (int) ;

__attribute__((used)) static ssize_t
compress_buffer(void *buf, size_t n, void *data)
{
 resbuf_t *rb = (resbuf_t *)data;
 int rc;

 rb->rb_zstr.next_out = (Bytef *)rb->rb_ptr;
 rb->rb_zstr.avail_out = rb->rb_size - (rb->rb_ptr - rb->rb_base);
 rb->rb_zstr.next_in = buf;
 rb->rb_zstr.avail_in = n;

 while (rb->rb_zstr.avail_in) {
  if (rb->rb_zstr.avail_out == 0)
   rbzs_grow(rb);

  if ((rc = deflate(&rb->rb_zstr, Z_NO_FLUSH)) != Z_OK)
   parseterminate("zlib deflate failed: %s", zError(rc));
 }
 rb->rb_ptr = (caddr_t)rb->rb_zstr.next_out;

 return (n);
}
