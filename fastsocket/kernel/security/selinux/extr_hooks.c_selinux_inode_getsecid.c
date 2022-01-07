
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode_security_struct {int sid; } ;
struct inode {struct inode_security_struct* i_security; } ;



__attribute__((used)) static void selinux_inode_getsecid(const struct inode *inode, u32 *secid)
{
 struct inode_security_struct *isec = inode->i_security;
 *secid = isec->sid;
}
