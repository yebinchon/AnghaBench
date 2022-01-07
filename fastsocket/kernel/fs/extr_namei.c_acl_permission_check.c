
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_mode; scalar_t__ i_uid; int i_gid; } ;


 int EACCES ;
 int EAGAIN ;
 scalar_t__ IS_POSIXACL (struct inode*) ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 int S_IRWXG ;
 scalar_t__ current_fsuid () ;
 scalar_t__ in_group_p (int ) ;

__attribute__((used)) static int acl_permission_check(struct inode *inode, int mask,
  int (*check_acl)(struct inode *inode, int mask))
{
 umode_t mode = inode->i_mode;

 mask &= MAY_READ | MAY_WRITE | MAY_EXEC;

 if (current_fsuid() == inode->i_uid)
  mode >>= 6;
 else {
  if (IS_POSIXACL(inode) && (mode & S_IRWXG) && check_acl) {
   int error = check_acl(inode, mask);
   if (error != -EAGAIN)
    return error;
  }

  if (in_group_p(inode->i_gid))
   mode >>= 3;
 }




 if ((mask & ~mode) == 0)
  return 0;
 return -EACCES;
}
