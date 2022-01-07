
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int comp (int,int ,int) ;
 int get_unaligned_be32 (void*) ;
 size_t* perm_c2p_32x8 ;
 int put_unaligned_be32 (int ,void*) ;

__attribute__((used)) static inline void store_planar_masked(void *dst, u32 dst_inc, u32 bpp,
           u32 d[8], u32 mask)
{
 int i;

 for (i = 0; i < bpp; i++, dst += dst_inc)
  put_unaligned_be32(comp(d[perm_c2p_32x8[i]],
     get_unaligned_be32(dst), mask),
       dst);
}
