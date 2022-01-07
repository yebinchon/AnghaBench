
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int mb_set_bit (int,void*) ;

__attribute__((used)) static void mb_set_bits(void *bm, int cur, int len)
{
 __u32 *addr;

 len = cur + len;
 while (cur < len) {
  if ((cur & 31) == 0 && (len - cur) >= 32) {

   addr = bm + (cur >> 3);
   *addr = 0xffffffff;
   cur += 32;
   continue;
  }
  mb_set_bit(cur, bm);
  cur++;
 }
}
