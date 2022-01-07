
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32
opaque_hashval(const void *ptr, int nbytes)
{
 unsigned char *cptr = (unsigned char *) ptr;

 u32 x = 0;
 while (nbytes--) {
  x *= 37;
  x += *cptr++;
 }
 return x;
}
