
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ctb_ptr; scalar_t__ ctb_end; } ;
typedef TYPE_1__ ctf_buf_t ;


 size_t MIN (size_t,size_t) ;
 int bcopy (void const*,scalar_t__,size_t) ;
 int ctf_buf_grow (TYPE_1__*) ;

__attribute__((used)) static void
ctf_buf_write(ctf_buf_t *b, void const *p, size_t n)
{
 size_t len;

 while (n != 0) {
  if (b->ctb_ptr == b->ctb_end)
   ctf_buf_grow(b);

  len = MIN((size_t)(b->ctb_end - b->ctb_ptr), n);
  bcopy(p, b->ctb_ptr, len);
  b->ctb_ptr += len;

  p = (char const *)p + len;
  n -= len;
 }
}
