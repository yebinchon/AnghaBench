
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {int inocache_lock; int inocache_wq; } ;
struct jffs2_inode_cache {int state; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

void jffs2_set_inocache_state(struct jffs2_sb_info *c, struct jffs2_inode_cache *ic, int state)
{
 spin_lock(&c->inocache_lock);
 ic->state = state;
 wake_up(&c->inocache_wq);
 spin_unlock(&c->inocache_lock);
}
