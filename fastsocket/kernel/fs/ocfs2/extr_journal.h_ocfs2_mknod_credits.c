
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int OCFS2_DIR_LINK_ADDITIONAL_CREDITS ;
 int OCFS2_SUBALLOC_ALLOC ;
 scalar_t__ ocfs2_add_dir_index_credits (struct super_block*) ;
 int ocfs2_quota_trans_credits (struct super_block*) ;

__attribute__((used)) static inline int ocfs2_mknod_credits(struct super_block *sb, int is_dir,
          int xattr_credits)
{
 int dir_credits = OCFS2_DIR_LINK_ADDITIONAL_CREDITS;

 if (is_dir)
  dir_credits += ocfs2_add_dir_index_credits(sb);

 return 4 + OCFS2_SUBALLOC_ALLOC + dir_credits + xattr_credits +
        ocfs2_quota_trans_credits(sb);
}
