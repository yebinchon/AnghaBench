
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_xattr_datum {int flags; scalar_t__ xname; } ;
struct jffs2_sb_info {int dummy; } ;


 int BUG_ON (int) ;
 int EIO ;
 int JFFS2_XFLAGS_DEAD ;
 int JFFS2_XFLAGS_INVALID ;
 int do_load_xattr_datum (struct jffs2_sb_info*,struct jffs2_xattr_datum*) ;
 int do_verify_xattr_datum (struct jffs2_sb_info*,struct jffs2_xattr_datum*) ;
 int is_xattr_datum_unchecked (struct jffs2_sb_info*,struct jffs2_xattr_datum*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int load_xattr_datum(struct jffs2_sb_info *c, struct jffs2_xattr_datum *xd)
{





 int rc = 0;

 BUG_ON(xd->flags & JFFS2_XFLAGS_DEAD);
 if (xd->xname)
  return 0;
 if (xd->flags & JFFS2_XFLAGS_INVALID)
  return EIO;
 if (unlikely(is_xattr_datum_unchecked(c, xd)))
  rc = do_verify_xattr_datum(c, xd);
 if (!rc)
  rc = do_load_xattr_datum(c, xd);
 return rc;
}
