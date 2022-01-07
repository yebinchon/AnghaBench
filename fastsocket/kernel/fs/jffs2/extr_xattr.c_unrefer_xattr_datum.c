
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_xattr_datum {int flags; void* node; int version; int xid; int xindex; int refcnt; } ;
struct jffs2_sb_info {int erase_completion_lock; int xattr_dead_list; } ;


 int BUG_ON (int) ;
 int JFFS2_XFLAGS_DEAD ;
 int JFFS2_XFLAGS_INVALID ;
 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int dbg_xattr (char*,int ,int ) ;
 int jffs2_free_xattr_datum (struct jffs2_xattr_datum*) ;
 int list_add (int *,int *) ;
 int spin_unlock (int *) ;
 int unload_xattr_datum (struct jffs2_sb_info*,struct jffs2_xattr_datum*) ;

__attribute__((used)) static void unrefer_xattr_datum(struct jffs2_sb_info *c, struct jffs2_xattr_datum *xd)
{

 if (atomic_dec_and_lock(&xd->refcnt, &c->erase_completion_lock)) {
  unload_xattr_datum(c, xd);
  xd->flags |= JFFS2_XFLAGS_DEAD;
  if (xd->node == (void *)xd) {
   BUG_ON(!(xd->flags & JFFS2_XFLAGS_INVALID));
   jffs2_free_xattr_datum(xd);
  } else {
   list_add(&xd->xindex, &c->xattr_dead_list);
  }
  spin_unlock(&c->erase_completion_lock);

  dbg_xattr("xdatum(xid=%u, version=%u) was removed.\n",
     xd->xid, xd->version);
 }
}
