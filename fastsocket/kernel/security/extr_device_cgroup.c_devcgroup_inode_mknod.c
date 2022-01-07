
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int ACC_MKNOD ;
 short DEV_BLOCK ;
 short DEV_CHAR ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 scalar_t__ S_ISBLK (int) ;
 int S_ISCHR (int) ;
 int __devcgroup_check_permission (short,int ,int ,int ) ;

int devcgroup_inode_mknod(int mode, dev_t dev)
{
 short type;

 if (!S_ISBLK(mode) && !S_ISCHR(mode))
  return 0;

 if (S_ISBLK(mode))
  type = DEV_BLOCK;
 else
  type = DEV_CHAR;

 return __devcgroup_check_permission(type, MAJOR(dev), MINOR(dev),
   ACC_MKNOD);

}
