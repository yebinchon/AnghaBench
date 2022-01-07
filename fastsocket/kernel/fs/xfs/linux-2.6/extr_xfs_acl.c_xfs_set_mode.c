
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_mode; int i_sb; } ;
struct iattr {int ia_valid; int ia_ctime; scalar_t__ ia_mode; } ;
typedef scalar_t__ mode_t ;


 int ATTR_CTIME ;
 int ATTR_MODE ;
 int XFS_ATTR_NOACL ;
 int XFS_I (struct inode*) ;
 int current_fs_time (int ) ;
 int xfs_setattr (int ,struct iattr*,int ) ;

__attribute__((used)) static int
xfs_set_mode(struct inode *inode, mode_t mode)
{
 int error = 0;

 if (mode != inode->i_mode) {
  struct iattr iattr;

  iattr.ia_valid = ATTR_MODE | ATTR_CTIME;
  iattr.ia_mode = mode;
  iattr.ia_ctime = current_fs_time(inode->i_sb);

  error = -xfs_setattr(XFS_I(inode), &iattr, XFS_ATTR_NOACL);
 }

 return error;
}
