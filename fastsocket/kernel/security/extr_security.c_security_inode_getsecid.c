
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int (* inode_getsecid ) (struct inode const*,int *) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct inode const*,int *) ;

void security_inode_getsecid(const struct inode *inode, u32 *secid)
{
 security_ops->inode_getsecid(inode, secid);
}
