
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_attr_list_context {int count; } ;


 scalar_t__ xfs_xattr_prefix_len (int) ;

__attribute__((used)) static int
xfs_xattr_put_listent_sizes(
 struct xfs_attr_list_context *context,
 int flags,
 unsigned char *name,
 int namelen,
 int valuelen,
 unsigned char *value)
{
 context->count += xfs_xattr_prefix_len(flags) + namelen + 1;
 return 0;
}
