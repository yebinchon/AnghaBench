
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; } ;
struct qnx4_sb_info {struct qnx4_sb_info* BitMap; } ;


 int kfree (struct qnx4_sb_info*) ;
 struct qnx4_sb_info* qnx4_sb (struct super_block*) ;

__attribute__((used)) static void qnx4_put_super(struct super_block *sb)
{
 struct qnx4_sb_info *qs = qnx4_sb(sb);
 kfree( qs->BitMap );
 kfree( qs );
 sb->s_fs_info = ((void*)0);
 return;
}
