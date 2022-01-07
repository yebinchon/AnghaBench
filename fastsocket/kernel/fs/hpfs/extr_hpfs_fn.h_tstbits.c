
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned tstbits(unsigned *bmp, unsigned b, unsigned n)
{
 int i;
 if ((b >= 0x4000) || (b + n - 1 >= 0x4000)) return n;
 if (!((bmp[(b & 0x3fff) >> 5] >> (b & 0x1f)) & 1)) return 1;
 for (i = 1; i < n; i++)
  if ( !((bmp[((b+i) & 0x3fff) >> 5] >> ((b+i) & 0x1f)) & 1))
   return i + 1;
 return 0;
}
