
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_security; } ;


 int kfree (int *) ;

__attribute__((used)) static void smack_inode_free_security(struct inode *inode)
{
 kfree(inode->i_security);
 inode->i_security = ((void*)0);
}
