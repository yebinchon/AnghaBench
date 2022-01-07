
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {int erase_completion_lock; } ;
struct jffs2_eraseblock {int dummy; } ;


 int jffs2_dbg_acct_sanity_check_nolock (struct jffs2_sb_info*,struct jffs2_eraseblock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
__jffs2_dbg_acct_sanity_check(struct jffs2_sb_info *c,
         struct jffs2_eraseblock *jeb)
{
 spin_lock(&c->erase_completion_lock);
 jffs2_dbg_acct_sanity_check_nolock(c, jeb);
 spin_unlock(&c->erase_completion_lock);
}
