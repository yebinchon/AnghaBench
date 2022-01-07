
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ old_format_only (struct super_block*) ;
 int reiserfs_warning (struct super_block*,char*,char*) ;
 scalar_t__ reiserfs_xattrs_optional (struct super_block*) ;

__attribute__((used)) static int xattr_mount_check(struct super_block *s)
{


 if (old_format_only(s)) {
  if (reiserfs_xattrs_optional(s)) {


   reiserfs_warning(s, "jdm-2005",
      "xattrs/ACLs not supported "
      "on pre-v3.6 format filesystems. "
      "Failing mount.");
   return -EOPNOTSUPP;
  }
 }

 return 0;
}
