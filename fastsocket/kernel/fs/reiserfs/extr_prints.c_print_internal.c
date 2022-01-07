
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_key {int dummy; } ;
struct disk_child {int dummy; } ;
struct buffer_head {int b_blocknr; } ;


 int B_IS_KEYS_LEVEL (struct buffer_head*) ;
 int B_NR_ITEMS (struct buffer_head*) ;
 struct disk_child* B_N_CHILD (struct buffer_head*,int) ;
 struct reiserfs_key* B_N_PDELIM_KEY (struct buffer_head*,int) ;
 int check_internal (struct buffer_head*) ;
 int printk (char*) ;
 int reiserfs_printk (char*,int,struct buffer_head*,...) ;

__attribute__((used)) static int print_internal(struct buffer_head *bh, int first, int last)
{
 struct reiserfs_key *key;
 struct disk_child *dc;
 int i;
 int from, to;

 if (!B_IS_KEYS_LEVEL(bh))
  return 1;

 check_internal(bh);

 if (first == -1) {
  from = 0;
  to = B_NR_ITEMS(bh);
 } else {
  from = first;
  to = last < B_NR_ITEMS(bh) ? last : B_NR_ITEMS(bh);
 }

 reiserfs_printk("INTERNAL NODE (%ld) contains %z\n", bh->b_blocknr, bh);

 dc = B_N_CHILD(bh, from);
 reiserfs_printk("PTR %d: %y ", from, dc);

 for (i = from, key = B_N_PDELIM_KEY(bh, from), dc++; i < to;
      i++, key++, dc++) {
  reiserfs_printk("KEY %d: %k PTR %d: %y ", i, key, i + 1, dc);
  if (i && i % 4 == 0)
   printk("\n");
 }
 printk("\n");
 return 0;
}
