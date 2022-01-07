
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int OCFS2_INODE_UPDATE_CREDITS ;
 int ocfs2_unlink_credits (struct super_block*) ;

__attribute__((used)) static inline int ocfs2_rename_credits(struct super_block *sb)
{
 return 3 * OCFS2_INODE_UPDATE_CREDITS + 6 + ocfs2_unlink_credits(sb);
}
