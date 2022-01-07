
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_mode; } ;
struct iattr {scalar_t__ ia_mode; int ia_valid; } ;
typedef scalar_t__ mode_t ;


 int ATTR_MODE ;
 int gfs2_setattr_simple (struct inode*,struct iattr*) ;

__attribute__((used)) static int gfs2_set_mode(struct inode *inode, mode_t mode)
{
 int error = 0;

 if (mode != inode->i_mode) {
  struct iattr iattr;

  iattr.ia_valid = ATTR_MODE;
  iattr.ia_mode = mode;

  error = gfs2_setattr_simple(inode, &iattr);
 }

 return error;
}
