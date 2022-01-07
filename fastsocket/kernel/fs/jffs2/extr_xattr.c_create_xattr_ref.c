
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_xattr_ref {struct jffs2_xattr_ref* next; struct jffs2_xattr_datum* xd; struct jffs2_inode_cache* ic; } ;
struct jffs2_xattr_datum {int dummy; } ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_inode_cache {struct jffs2_xattr_ref* xref; } ;


 int ENOMEM ;
 struct jffs2_xattr_ref* ERR_PTR (int) ;
 struct jffs2_xattr_ref* jffs2_alloc_xattr_ref () ;
 int jffs2_free_xattr_ref (struct jffs2_xattr_ref*) ;
 int save_xattr_ref (struct jffs2_sb_info*,struct jffs2_xattr_ref*) ;

__attribute__((used)) static struct jffs2_xattr_ref *create_xattr_ref(struct jffs2_sb_info *c, struct jffs2_inode_cache *ic,
      struct jffs2_xattr_datum *xd)
{

 struct jffs2_xattr_ref *ref;
 int ret;

 ref = jffs2_alloc_xattr_ref();
 if (!ref)
  return ERR_PTR(-ENOMEM);
 ref->ic = ic;
 ref->xd = xd;

 ret = save_xattr_ref(c, ref);
 if (ret) {
  jffs2_free_xattr_ref(ref);
  return ERR_PTR(ret);
 }


 ref->next = ic->xref;
 ic->xref = ref;

 return ref;
}
