
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ulong_t ;
struct TYPE_4__ {size_t str_nbufs; scalar_t__ str_ptr; scalar_t__* str_bufs; scalar_t__ str_bufsz; } ;
typedef TYPE_1__ strtab_t ;


 size_t MIN (size_t,size_t) ;
 int bcopy (char const*,size_t,size_t) ;
 int strtab_grow (TYPE_1__*) ;

__attribute__((used)) static void
strtab_copyin(strtab_t *sp, const char *str, size_t len)
{
 ulong_t b = sp->str_nbufs - 1;
 size_t resid, n;

 while (len != 0) {
  if (sp->str_ptr == sp->str_bufs[b] + sp->str_bufsz) {
   strtab_grow(sp);
   b++;
  }

  resid = sp->str_bufs[b] + sp->str_bufsz - sp->str_ptr;
  n = MIN(resid, len);
  bcopy(str, sp->str_ptr, n);

  sp->str_ptr += n;
  str += n;
  len -= n;
 }
}
