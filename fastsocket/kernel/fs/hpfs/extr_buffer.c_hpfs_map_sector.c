
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {void* b_data; } ;


 int cond_resched () ;
 int printk (char*) ;
 struct buffer_head* sb_bread (struct super_block*,unsigned int) ;

void *hpfs_map_sector(struct super_block *s, unsigned secno, struct buffer_head **bhp,
   int ahead)
{
 struct buffer_head *bh;

 cond_resched();

 *bhp = bh = sb_bread(s, secno);
 if (bh != ((void*)0))
  return bh->b_data;
 else {
  printk("HPFS: hpfs_map_sector: read error\n");
  return ((void*)0);
 }
}
