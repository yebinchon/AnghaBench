
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_inode_info {scalar_t__ usercompr; scalar_t__ flags; int * target; int * dents; int * metadata; int fragtree; scalar_t__ highest_version; } ;


 int RB_ROOT ;

__attribute__((used)) static inline void jffs2_init_inode_info(struct jffs2_inode_info *f)
{
 f->highest_version = 0;
 f->fragtree = RB_ROOT;
 f->metadata = ((void*)0);
 f->dents = ((void*)0);
 f->target = ((void*)0);
 f->flags = 0;
 f->usercompr = 0;
}
