
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_attr_list_context {unsigned int count; int firstu; scalar_t__ alist; } ;


 int ASSERT (int) ;
 int CAP_SYS_ADMIN ;
 int XFS_ATTR_ROOT ;
 int capable (int ) ;
 int strncpy (char*,char*,int) ;
 char* xfs_xattr_prefix (int) ;
 unsigned int xfs_xattr_prefix_len (int) ;

__attribute__((used)) static int
xfs_xattr_put_listent(
 struct xfs_attr_list_context *context,
 int flags,
 unsigned char *name,
 int namelen,
 int valuelen,
 unsigned char *value)
{
 unsigned int prefix_len = xfs_xattr_prefix_len(flags);
 char *offset;
 int arraytop;

 ASSERT(context->count >= 0);





 if ((flags & XFS_ATTR_ROOT) && !capable(CAP_SYS_ADMIN))
  return 0;

 arraytop = context->count + prefix_len + namelen + 1;
 if (arraytop > context->firstu) {
  context->count = -1;
  return 1;
 }
 offset = (char *)context->alist + context->count;
 strncpy(offset, xfs_xattr_prefix(flags), prefix_len);
 offset += prefix_len;
 strncpy(offset, (char *)name, namelen);
 offset += namelen;
 *offset = '\0';
 context->count += prefix_len + namelen + 1;
 return 0;
}
