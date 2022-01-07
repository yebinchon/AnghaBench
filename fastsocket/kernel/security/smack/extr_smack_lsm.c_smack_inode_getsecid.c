
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode_smack {int smk_inode; } ;
struct inode {struct inode_smack* i_security; } ;


 int smack_to_secid (int ) ;

__attribute__((used)) static void smack_inode_getsecid(const struct inode *inode, u32 *secid)
{
 struct inode_smack *isp = inode->i_security;

 *secid = smack_to_secid(isp->smk_inode);
}
