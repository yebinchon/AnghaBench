
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_dquot; } ;


 scalar_t__ IS_NOQUOTA (struct inode*) ;
 int MAXQUOTAS ;

__attribute__((used)) static int dqinit_needed(struct inode *inode, int type)
{
 int cnt;

 if (IS_NOQUOTA(inode))
  return 0;
 if (type != -1)
  return !inode->i_dquot[type];
 for (cnt = 0; cnt < MAXQUOTAS; cnt++)
  if (!inode->i_dquot[cnt])
   return 1;
 return 0;
}
