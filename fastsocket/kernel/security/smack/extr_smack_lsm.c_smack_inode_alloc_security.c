
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_security; } ;


 int ENOMEM ;
 int current_security () ;
 int * new_inode_smack (int ) ;

__attribute__((used)) static int smack_inode_alloc_security(struct inode *inode)
{
 inode->i_security = new_inode_smack(current_security());
 if (inode->i_security == ((void*)0))
  return -ENOMEM;
 return 0;
}
