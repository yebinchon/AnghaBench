
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 short ACC_READ ;
 short ACC_WRITE ;
 short DEV_BLOCK ;
 short DEV_CHAR ;
 int MAY_READ ;
 int MAY_WRITE ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 int __devcgroup_check_permission (short,int ,int ,short) ;
 int imajor (struct inode*) ;
 int iminor (struct inode*) ;

int __devcgroup_inode_permission(struct inode *inode, int mask)
{
 short type, access = 0;

 if (S_ISBLK(inode->i_mode))
  type = DEV_BLOCK;
 if (S_ISCHR(inode->i_mode))
  type = DEV_CHAR;
 if (mask & MAY_WRITE)
  access |= ACC_WRITE;
 if (mask & MAY_READ)
  access |= ACC_READ;

 return __devcgroup_check_permission(type, imajor(inode), iminor(inode),
   access);
}
