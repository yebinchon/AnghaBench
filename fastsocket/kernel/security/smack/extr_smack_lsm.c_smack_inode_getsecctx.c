
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;


 int XATTR_SMACK_SUFFIX ;
 int smack_inode_getsecurity (struct inode*,int ,void**,int) ;

__attribute__((used)) static int smack_inode_getsecctx(struct inode *inode, void **ctx, u32 *ctxlen)
{
 int len = 0;
 len = smack_inode_getsecurity(inode, XATTR_SMACK_SUFFIX, ctx, 1);

 if (len < 0)
  return len;
 *ctxlen = len;
 return 0;
}
