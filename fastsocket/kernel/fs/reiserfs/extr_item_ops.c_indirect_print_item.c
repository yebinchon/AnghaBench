
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int dummy; } ;
typedef int __u32 ;
typedef int __le32 ;


 int INT_MAX ;
 int I_UNFM_NUM (struct item_head*) ;
 int UNFM_P_SIZE ;
 int get_block_num (int *,int) ;
 int ih_item_len (struct item_head*) ;
 int print_sequence (int ,int) ;
 int printk (char*,...) ;
 int reiserfs_warning (int *,char*,char*) ;
 scalar_t__ sequence_finished (int ,int*,int ) ;
 int start_new_sequence (int *,int*,int ) ;

__attribute__((used)) static void indirect_print_item(struct item_head *ih, char *item)
{
 int j;
 __le32 *unp;
 __u32 prev = INT_MAX;
 int num = 0;

 unp = (__le32 *) item;

 if (ih_item_len(ih) % UNFM_P_SIZE)
  reiserfs_warning(((void*)0), "reiserfs-16102", "invalid item len");

 printk("%d pointers\n[ ", (int)I_UNFM_NUM(ih));
 for (j = 0; j < I_UNFM_NUM(ih); j++) {
  if (sequence_finished(prev, &num, get_block_num(unp, j))) {
   print_sequence(prev, num);
   start_new_sequence(&prev, &num, get_block_num(unp, j));
  }
 }
 print_sequence(prev, num);
 printk("]\n");
}
