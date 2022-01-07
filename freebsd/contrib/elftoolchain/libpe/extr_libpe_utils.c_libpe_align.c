
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef int PE ;


 int assert (int) ;
 scalar_t__ libpe_pad (int *,scalar_t__) ;
 scalar_t__ roundup (scalar_t__,size_t) ;

off_t
libpe_align(PE *pe, off_t off, size_t align)
{
 off_t n;

 assert(align > 0 && (align & (align - 1)) == 0);

 n = roundup(off, align);
 if (n > off) {
  if (libpe_pad(pe, n - off) < 0)
   return (-1);
 }

 return (n);
}
