
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int OCFS2_QUOTA_BLOCK_UPDATE_CREDITS ;
 int ocfs2_global_qinit_alloc (struct super_block*,int) ;

__attribute__((used)) static int ocfs2_calc_global_qinit_credits(struct super_block *sb, int type)
{

 return (ocfs2_global_qinit_alloc(sb, type) + 2) *
   OCFS2_QUOTA_BLOCK_UPDATE_CREDITS;
}
