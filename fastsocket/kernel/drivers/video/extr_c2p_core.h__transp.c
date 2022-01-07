
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;



__attribute__((used)) static inline void _transp(u32 d[], unsigned int i1, unsigned int i2,
      unsigned int shift, u32 mask)
{
 u32 t = (d[i1] ^ (d[i2] >> shift)) & mask;

 d[i1] ^= t;
 d[i2] ^= t << shift;
}
