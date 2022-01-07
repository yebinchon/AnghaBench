
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ext4_find_next_bit (void*,int,int) ;
 void* mb_correct_addr_and_bit (int*,void*) ;

__attribute__((used)) static inline int mb_find_next_bit(void *addr, int max, int start)
{
 int fix = 0, ret, tmpmax;
 addr = mb_correct_addr_and_bit(&fix, addr);
 tmpmax = max + fix;
 start += fix;

 ret = ext4_find_next_bit(addr, tmpmax, start) - fix;
 if (ret > max)
  return max;
 return ret;
}
