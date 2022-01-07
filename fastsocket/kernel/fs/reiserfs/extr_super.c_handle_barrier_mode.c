
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int s_mount_opt; } ;


 int REISERFS_BARRIER_FLUSH ;
 int REISERFS_BARRIER_NONE ;
 TYPE_1__* REISERFS_SB (struct super_block*) ;
 int printk (char*) ;

__attribute__((used)) static void handle_barrier_mode(struct super_block *s, unsigned long bits)
{
 int flush = (1 << REISERFS_BARRIER_FLUSH);
 int none = (1 << REISERFS_BARRIER_NONE);
 int all_barrier = flush | none;

 if (bits & all_barrier) {
  REISERFS_SB(s)->s_mount_opt &= ~all_barrier;
  if (bits & flush) {
   REISERFS_SB(s)->s_mount_opt |= flush;
   printk("reiserfs: enabling write barrier flush mode\n");
  } else if (bits & none) {
   REISERFS_SB(s)->s_mount_opt |= none;
   printk("reiserfs: write barriers turned off\n");
  }
 }
}
