
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UBIFS_LPT_FANOUT ;
 int UBIFS_LPT_FANOUT_SHIFT ;

__attribute__((used)) static int calc_nnode_num(int row, int col)
{
 int num, bits;

 num = 1;
 while (row--) {
  bits = (col & (UBIFS_LPT_FANOUT - 1));
  col >>= UBIFS_LPT_FANOUT_SHIFT;
  num <<= UBIFS_LPT_FANOUT_SHIFT;
  num |= bits;
 }
 return num;
}
