
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 int printk (char*,int,int) ;

__attribute__((used)) static void hpfs_pos_del(loff_t *p, loff_t d, loff_t c)
{
 if ((*p & ~0x3f) == (d & ~0x3f) && (*p & 0x3f) >= (d & 0x3f)) {
  int n = (*p & 0x3f) - c;
  if (n < 1) printk("HPFS: hpfs_pos_ins: %08x - %d\n", (int)*p, (int)c >> 8);
  else *p = (*p & ~0x3f) | n;
 }
}
