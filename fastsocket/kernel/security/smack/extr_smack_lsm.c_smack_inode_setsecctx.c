
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dentry {int dummy; } ;


 int XATTR_NAME_SMACK ;
 int __vfs_setxattr_noperm (struct dentry*,int ,void*,int ,int ) ;

__attribute__((used)) static int smack_inode_setsecctx(struct dentry *dentry, void *ctx, u32 ctxlen)
{
 return __vfs_setxattr_noperm(dentry, XATTR_NAME_SMACK, ctx, ctxlen, 0);
}
