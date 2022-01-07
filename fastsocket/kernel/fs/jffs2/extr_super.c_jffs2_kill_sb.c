
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; } ;
struct jffs2_sb_info {int dummy; } ;


 struct jffs2_sb_info* JFFS2_SB_INFO (struct super_block*) ;
 int MS_RDONLY ;
 int jffs2_stop_garbage_collect_thread (struct jffs2_sb_info*) ;
 int kfree (struct jffs2_sb_info*) ;
 int kill_mtd_super (struct super_block*) ;

__attribute__((used)) static void jffs2_kill_sb(struct super_block *sb)
{
 struct jffs2_sb_info *c = JFFS2_SB_INFO(sb);
 if (!(sb->s_flags & MS_RDONLY))
  jffs2_stop_garbage_collect_thread(c);
 kill_mtd_super(sb);
 kfree(c);
}
