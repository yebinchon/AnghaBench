
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_sb_private_info {int s_fpb; } ;
struct ufs_buffer_head {int dummy; } ;


 int* ubh_get_addr (struct ufs_buffer_head*,unsigned int) ;

__attribute__((used)) static inline int _ubh_isblockset_(struct ufs_sb_private_info * uspi,
 struct ufs_buffer_head * ubh, unsigned begin, unsigned block)
{
 switch (uspi->s_fpb) {
 case 8:
      return (*ubh_get_addr (ubh, begin + block) == 0xff);
 case 4:
  return (*ubh_get_addr (ubh, begin + (block >> 1)) == (0x0f << ((block & 0x01) << 2)));
 case 2:
  return (*ubh_get_addr (ubh, begin + (block >> 2)) == (0x03 << ((block & 0x03) << 1)));
 case 1:
  return (*ubh_get_addr (ubh, begin + (block >> 3)) == (0x01 << (block & 0x07)));
 }
 return 0;
}
