
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jffs2_xattr_ref {scalar_t__ xseqno; struct jffs2_xattr_ref* next; TYPE_1__* xd; } ;
struct jffs2_sb_info {int xattr_sem; } ;
struct jffs2_inode_cache {int flags; struct jffs2_xattr_ref* xref; } ;
struct TYPE_2__ {scalar_t__ xprefix; int xname; int flags; } ;


 int INO_FLAGS_XATTR_CHECKED ;
 int JFFS2_XFLAGS_BIND ;
 int delete_xattr_ref (struct jffs2_sb_info*,struct jffs2_xattr_ref*) ;
 int down_write (int *) ;
 scalar_t__ likely (int) ;
 int load_xattr_datum (struct jffs2_sb_info*,TYPE_1__*) ;
 int strcmp (int ,int ) ;
 scalar_t__ unlikely (int) ;
 int up_write (int *) ;

__attribute__((used)) static int check_xattr_ref_inode(struct jffs2_sb_info *c, struct jffs2_inode_cache *ic)
{




 struct jffs2_xattr_ref *ref, *cmp, **pref, **pcmp;
 int rc = 0;

 if (likely(ic->flags & INO_FLAGS_XATTR_CHECKED))
  return 0;
 down_write(&c->xattr_sem);
 retry:
 rc = 0;
 for (ref=ic->xref, pref=&ic->xref; ref; pref=&ref->next, ref=ref->next) {
  if (!ref->xd->xname) {
   rc = load_xattr_datum(c, ref->xd);
   if (unlikely(rc > 0)) {
    *pref = ref->next;
    delete_xattr_ref(c, ref);
    goto retry;
   } else if (unlikely(rc < 0))
    goto out;
  }
  for (cmp=ref->next, pcmp=&ref->next; cmp; pcmp=&cmp->next, cmp=cmp->next) {
   if (!cmp->xd->xname) {
    ref->xd->flags |= JFFS2_XFLAGS_BIND;
    rc = load_xattr_datum(c, cmp->xd);
    ref->xd->flags &= ~JFFS2_XFLAGS_BIND;
    if (unlikely(rc > 0)) {
     *pcmp = cmp->next;
     delete_xattr_ref(c, cmp);
     goto retry;
    } else if (unlikely(rc < 0))
     goto out;
   }
   if (ref->xd->xprefix == cmp->xd->xprefix
       && !strcmp(ref->xd->xname, cmp->xd->xname)) {
    if (ref->xseqno > cmp->xseqno) {
     *pcmp = cmp->next;
     delete_xattr_ref(c, cmp);
    } else {
     *pref = ref->next;
     delete_xattr_ref(c, ref);
    }
    goto retry;
   }
  }
 }
 ic->flags |= INO_FLAGS_XATTR_CHECKED;
 out:
 up_write(&c->xattr_sem);

 return rc;
}
