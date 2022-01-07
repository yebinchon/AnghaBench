
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* getxattr ) (struct dentry*,int ,char*,int) ;} ;


 int SMK_LABELLEN ;
 int XATTR_NAME_SMACK ;
 char* smk_import (char*,int) ;
 int stub1 (struct dentry*,int ,char*,int) ;

__attribute__((used)) static char *smk_fetch(struct inode *ip, struct dentry *dp)
{
 int rc;
 char in[SMK_LABELLEN];

 if (ip->i_op->getxattr == ((void*)0))
  return ((void*)0);

 rc = ip->i_op->getxattr(dp, XATTR_NAME_SMACK, in, SMK_LABELLEN);
 if (rc < 0)
  return ((void*)0);

 return smk_import(in, rc);
}
