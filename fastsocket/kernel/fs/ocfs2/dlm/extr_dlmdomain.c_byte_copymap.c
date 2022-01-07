
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int byte_set_bit (unsigned int,int *) ;
 int memset (int *,int ,unsigned int) ;
 scalar_t__ test_bit (unsigned int,unsigned long*) ;

__attribute__((used)) static inline void byte_copymap(u8 dmap[], unsigned long smap[],
   unsigned int sz)
{
 unsigned int nn;

 if (!sz)
  return;

 memset(dmap, 0, ((sz + 7) >> 3));
 for (nn = 0 ; nn < sz; nn++)
  if (test_bit(nn, smap))
   byte_set_bit(nn, dmap);
}
