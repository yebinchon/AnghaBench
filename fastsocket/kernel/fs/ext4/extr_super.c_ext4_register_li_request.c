
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; } ;
struct ext4_sb_info {scalar_t__ s_groups_count; struct ext4_li_request* s_li_request; } ;
struct ext4_li_request {int lr_request; scalar_t__ lr_timeout; } ;
typedef scalar_t__ ext4_group_t ;
struct TYPE_2__ {int li_state; int li_list_mtx; int li_request_list; } ;


 int ENOMEM ;
 int EXT4_LAZYINIT_RUNNING ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int INIT_INODE_TABLE ;
 int MS_RDONLY ;
 TYPE_1__* ext4_li_info ;
 int ext4_li_info_new () ;
 int ext4_li_mtx ;
 struct ext4_li_request* ext4_li_request_new (struct super_block*,scalar_t__) ;
 int ext4_run_lazyinit_thread () ;
 int kfree (struct ext4_li_request*) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_opt (struct super_block*,int ) ;

__attribute__((used)) static int ext4_register_li_request(struct super_block *sb,
        ext4_group_t first_not_zeroed)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 struct ext4_li_request *elr;
 ext4_group_t ngroups = EXT4_SB(sb)->s_groups_count;
 int ret = 0;

 if (sbi->s_li_request != ((void*)0)) {




  sbi->s_li_request->lr_timeout = 0;
  return 0;
 }

 if (first_not_zeroed == ngroups ||
     (sb->s_flags & MS_RDONLY) ||
     !test_opt(sb, INIT_INODE_TABLE))
  return 0;

 elr = ext4_li_request_new(sb, first_not_zeroed);
 if (!elr)
  return -ENOMEM;

 mutex_lock(&ext4_li_mtx);

 if (((void*)0) == ext4_li_info) {
  ret = ext4_li_info_new();
  if (ret)
   goto out;
 }

 mutex_lock(&ext4_li_info->li_list_mtx);
 list_add(&elr->lr_request, &ext4_li_info->li_request_list);
 mutex_unlock(&ext4_li_info->li_list_mtx);

 sbi->s_li_request = elr;





 elr = ((void*)0);

 if (!(ext4_li_info->li_state & EXT4_LAZYINIT_RUNNING)) {
  ret = ext4_run_lazyinit_thread();
  if (ret)
   goto out;
 }
out:
 mutex_unlock(&ext4_li_mtx);
 if (ret)
  kfree(elr);
 return ret;
}
