
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_smack {char* smk_inode; int smk_lock; scalar_t__ smk_flags; } ;


 int GFP_KERNEL ;
 struct inode_smack* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct inode_smack *new_inode_smack(char *smack)
{
 struct inode_smack *isp;

 isp = kzalloc(sizeof(struct inode_smack), GFP_KERNEL);
 if (isp == ((void*)0))
  return ((void*)0);

 isp->smk_inode = smack;
 isp->smk_flags = 0;
 mutex_init(&isp->smk_lock);

 return isp;
}
