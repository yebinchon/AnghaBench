
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jffs2_xattr_ref {int xprefix; struct jffs2_xattr_ref* next; int xseqno; struct jffs2_xattr_ref* xd; struct jffs2_inode_cache* ic; int xid; int ino; int xname; } ;
struct jffs2_xattr_datum {int xprefix; struct jffs2_xattr_datum* next; int xseqno; struct jffs2_xattr_datum* xd; struct jffs2_inode_cache* ic; int xid; int ino; int xname; } ;
struct jffs2_sb_info {int xattr_sem; int erase_completion_lock; struct jffs2_xattr_ref* xref_dead_list; } ;
struct jffs2_raw_xref {int dummy; } ;
struct jffs2_raw_xattr {int dummy; } ;
struct jffs2_inode_info {struct jffs2_inode_cache* inocache; } ;
struct jffs2_inode_cache {struct jffs2_xattr_ref* xref; int ino; } ;
struct inode {int i_sb; } ;


 int ALLOC_NORMAL ;
 int EEXIST ;
 int ENODATA ;
 scalar_t__ IS_ERR (struct jffs2_xattr_ref*) ;
 struct jffs2_inode_info* JFFS2_INODE_INFO (struct inode*) ;
 struct jffs2_sb_info* JFFS2_SB_INFO (int ) ;
 int JFFS2_SUMMARY_XATTR_SIZE ;
 int JFFS2_SUMMARY_XREF_SIZE ;
 int JFFS2_WARNING (char*,int,int ) ;
 int PAD (int) ;
 int PTR_ERR (struct jffs2_xattr_ref*) ;
 int XATTR_CREATE ;
 int XATTR_REPLACE ;
 int XREF_DELETE_MARKER ;
 int check_xattr_ref_inode (struct jffs2_sb_info*,struct jffs2_inode_cache*) ;
 struct jffs2_xattr_ref* create_xattr_datum (struct jffs2_sb_info*,int,char const*,char const*,size_t) ;
 struct jffs2_xattr_ref* create_xattr_ref (struct jffs2_sb_info*,struct jffs2_inode_cache*,struct jffs2_xattr_ref*) ;
 int delete_xattr_ref (struct jffs2_sb_info*,struct jffs2_xattr_ref*) ;
 int down_write (int *) ;
 int jffs2_complete_reservation (struct jffs2_sb_info*) ;
 int jffs2_reserve_space (struct jffs2_sb_info*,int ,int *,int ,int ) ;
 int load_xattr_datum (struct jffs2_sb_info*,struct jffs2_xattr_ref*) ;
 int save_xattr_ref (struct jffs2_sb_info*,struct jffs2_xattr_ref*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strcmp (int ,char const*) ;
 int strlen (char const*) ;
 scalar_t__ unlikely (int) ;
 int unrefer_xattr_datum (struct jffs2_sb_info*,struct jffs2_xattr_ref*) ;
 int up_write (int *) ;

int do_jffs2_setxattr(struct inode *inode, int xprefix, const char *xname,
        const char *buffer, size_t size, int flags)
{
 struct jffs2_inode_info *f = JFFS2_INODE_INFO(inode);
 struct jffs2_sb_info *c = JFFS2_SB_INFO(inode->i_sb);
 struct jffs2_inode_cache *ic = f->inocache;
 struct jffs2_xattr_datum *xd;
 struct jffs2_xattr_ref *ref, *newref, **pref;
 uint32_t length, request;
 int rc;

 rc = check_xattr_ref_inode(c, ic);
 if (unlikely(rc))
  return rc;

 request = PAD(sizeof(struct jffs2_raw_xattr) + strlen(xname) + 1 + size);
 rc = jffs2_reserve_space(c, request, &length,
     ALLOC_NORMAL, JFFS2_SUMMARY_XATTR_SIZE);
 if (rc) {
  JFFS2_WARNING("jffs2_reserve_space()=%d, request=%u\n", rc, request);
  return rc;
 }


 down_write(&c->xattr_sem);
 retry:
 for (ref=ic->xref, pref=&ic->xref; ref; pref=&ref->next, ref=ref->next) {
  xd = ref->xd;
  if (xd->xprefix != xprefix)
   continue;
  if (!xd->xname) {
   rc = load_xattr_datum(c, xd);
   if (unlikely(rc > 0)) {
    *pref = ref->next;
    delete_xattr_ref(c, ref);
    goto retry;
   } else if (unlikely(rc < 0))
    goto out;
  }
  if (!strcmp(xd->xname, xname)) {
   if (flags & XATTR_CREATE) {
    rc = -EEXIST;
    goto out;
   }
   if (!buffer) {
    ref->ino = ic->ino;
    ref->xid = xd->xid;
    ref->xseqno |= XREF_DELETE_MARKER;
    rc = save_xattr_ref(c, ref);
    if (!rc) {
     *pref = ref->next;
     spin_lock(&c->erase_completion_lock);
     ref->next = c->xref_dead_list;
     c->xref_dead_list = ref;
     spin_unlock(&c->erase_completion_lock);
     unrefer_xattr_datum(c, xd);
    } else {
     ref->ic = ic;
     ref->xd = xd;
     ref->xseqno &= ~XREF_DELETE_MARKER;
    }
    goto out;
   }
   goto found;
  }
 }

 if (flags & XATTR_REPLACE) {
  rc = -ENODATA;
  goto out;
 }
 if (!buffer) {
  rc = -ENODATA;
  goto out;
 }
 found:
 xd = create_xattr_datum(c, xprefix, xname, buffer, size);
 if (IS_ERR(xd)) {
  rc = PTR_ERR(xd);
  goto out;
 }
 up_write(&c->xattr_sem);
 jffs2_complete_reservation(c);


 request = PAD(sizeof(struct jffs2_raw_xref));
 rc = jffs2_reserve_space(c, request, &length,
     ALLOC_NORMAL, JFFS2_SUMMARY_XREF_SIZE);
 down_write(&c->xattr_sem);
 if (rc) {
  JFFS2_WARNING("jffs2_reserve_space()=%d, request=%u\n", rc, request);
  unrefer_xattr_datum(c, xd);
  up_write(&c->xattr_sem);
  return rc;
 }
 if (ref)
  *pref = ref->next;
 newref = create_xattr_ref(c, ic, xd);
 if (IS_ERR(newref)) {
  if (ref) {
   ref->next = ic->xref;
   ic->xref = ref;
  }
  rc = PTR_ERR(newref);
  unrefer_xattr_datum(c, xd);
 } else if (ref) {
  delete_xattr_ref(c, ref);
 }
 out:
 up_write(&c->xattr_sem);
 jffs2_complete_reservation(c);
 return rc;
}
