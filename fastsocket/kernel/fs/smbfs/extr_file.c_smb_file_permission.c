
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 int EACCES ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 int VERBOSE (char*,int,int) ;

__attribute__((used)) static int
smb_file_permission(struct inode *inode, int mask)
{
 int mode = inode->i_mode;
 int error = 0;

 VERBOSE("mode=%x, mask=%x\n", mode, mask);


 mode >>= 6;
 if (mask & ~mode & (MAY_READ | MAY_WRITE | MAY_EXEC))
  error = -EACCES;
 return error;
}
