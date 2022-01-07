
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_smack {char* smk_inode; } ;
struct inode {struct inode_smack* i_security; } ;



__attribute__((used)) static inline char *smk_of_inode(const struct inode *isp)
{
 struct inode_smack *sip = isp->i_security;
 return sip->smk_inode;
}
