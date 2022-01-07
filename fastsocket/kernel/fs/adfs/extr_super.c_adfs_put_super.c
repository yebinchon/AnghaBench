
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; } ;
struct adfs_sb_info {int s_map_size; struct adfs_sb_info* s_map; int dm_bh; } ;


 struct adfs_sb_info* ADFS_SB (struct super_block*) ;
 int brelse (int ) ;
 int kfree (struct adfs_sb_info*) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static void adfs_put_super(struct super_block *sb)
{
 int i;
 struct adfs_sb_info *asb = ADFS_SB(sb);

 lock_kernel();

 for (i = 0; i < asb->s_map_size; i++)
  brelse(asb->s_map[i].dm_bh);
 kfree(asb->s_map);
 kfree(asb);
 sb->s_fs_info = ((void*)0);

 unlock_kernel();
}
