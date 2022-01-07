
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct jffs2_xattr_datum {size_t xid; size_t version; int xindex; } ;
struct jffs2_sb_info {scalar_t__ highest_xid; int * xattrindex; } ;


 int ENOMEM ;
 struct jffs2_xattr_datum* ERR_PTR (int ) ;
 size_t XATTRINDEX_HASHSIZE ;
 struct jffs2_xattr_datum* jffs2_alloc_xattr_datum () ;
 struct jffs2_xattr_datum* jffs2_find_xattr_datum (struct jffs2_sb_info*,size_t) ;
 int list_add_tail (int *,int *) ;

struct jffs2_xattr_datum *jffs2_setup_xattr_datum(struct jffs2_sb_info *c,
        uint32_t xid, uint32_t version)
{
 struct jffs2_xattr_datum *xd;

 xd = jffs2_find_xattr_datum(c, xid);
 if (!xd) {
  xd = jffs2_alloc_xattr_datum();
  if (!xd)
   return ERR_PTR(-ENOMEM);
  xd->xid = xid;
  xd->version = version;
  if (xd->xid > c->highest_xid)
   c->highest_xid = xd->xid;
  list_add_tail(&xd->xindex, &c->xattrindex[xid % XATTRINDEX_HASHSIZE]);
 }
 return xd;
}
