
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;


 int XATTR_SMACK_SUFFIX ;
 int smack_inode_setsecurity (struct inode*,int ,void*,int ,int ) ;

__attribute__((used)) static int smack_inode_notifysecctx(struct inode *inode, void *ctx, u32 ctxlen)
{
 return smack_inode_setsecurity(inode, XATTR_SMACK_SUFFIX, ctx, ctxlen, 0);
}
