
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int s_mount_opt; } ;


 int REISERFS_BARRIER_FLUSH ;
 TYPE_1__* REISERFS_SB (struct super_block*) ;
 int printk (char*,int ) ;
 int reiserfs_bdevname (struct super_block*) ;

__attribute__((used)) static void disable_barrier(struct super_block *s)
{
 REISERFS_SB(s)->s_mount_opt &= ~(1 << REISERFS_BARRIER_FLUSH);
 printk("reiserfs: disabling flush barriers on %s\n",
        reiserfs_bdevname(s));
}
