
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {void* b_data; } ;


 int buffer_uptodate (struct buffer_head*) ;
 int cond_resched () ;
 int printk (char*) ;
 struct buffer_head* sb_getblk (struct super_block*,unsigned int) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

void *hpfs_get_sector(struct super_block *s, unsigned secno, struct buffer_head **bhp)
{
 struct buffer_head *bh;


 cond_resched();

 if ((*bhp = bh = sb_getblk(s, secno)) != ((void*)0)) {
  if (!buffer_uptodate(bh)) wait_on_buffer(bh);
  set_buffer_uptodate(bh);
  return bh->b_data;
 } else {
  printk("HPFS: hpfs_get_sector: getblk failed\n");
  return ((void*)0);
 }
}
