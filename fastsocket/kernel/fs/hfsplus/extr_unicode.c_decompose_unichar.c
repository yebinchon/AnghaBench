
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int u16 ;


 int* hfsplus_decompose_table ;

__attribute__((used)) static inline u16 *decompose_unichar(wchar_t uc, int *size)
{
 int off;

 off = hfsplus_decompose_table[(uc >> 12) & 0xf];
 if (off == 0 || off == 0xffff)
  return ((void*)0);

 off = hfsplus_decompose_table[off + ((uc >> 8) & 0xf)];
 if (!off)
  return ((void*)0);

 off = hfsplus_decompose_table[off + ((uc >> 4) & 0xf)];
 if (!off)
  return ((void*)0);

 off = hfsplus_decompose_table[off + (uc & 0xf)];
 *size = off & 3;
 if (*size == 0)
  return ((void*)0);
 return hfsplus_decompose_table + (off / 4);
}
