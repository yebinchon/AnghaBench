
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jffs2_tmp_dnode_info {TYPE_1__* fn; } ;
struct jffs2_sb_info {int dummy; } ;
struct TYPE_2__ {int raw; } ;


 int jffs2_free_full_dnode (TYPE_1__*) ;
 int jffs2_free_tmp_dnode_info (struct jffs2_tmp_dnode_info*) ;
 int jffs2_mark_node_obsolete (struct jffs2_sb_info*,int ) ;

__attribute__((used)) static void jffs2_kill_tn(struct jffs2_sb_info *c, struct jffs2_tmp_dnode_info *tn)
{
 jffs2_mark_node_obsolete(c, tn->fn->raw);
 jffs2_free_full_dnode(tn->fn);
 jffs2_free_tmp_dnode_info(tn);
}
