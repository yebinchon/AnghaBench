
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_uid; scalar_t__ i_gid; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_uid; scalar_t__ ia_gid; int ia_mode; int ia_size; } ;


 unsigned int ATTR_ATIME_SET ;
 unsigned int ATTR_FORCE ;
 unsigned int ATTR_GID ;
 unsigned int ATTR_MODE ;
 unsigned int ATTR_MTIME_SET ;
 unsigned int ATTR_SIZE ;
 unsigned int ATTR_TIMES_SET ;
 unsigned int ATTR_UID ;
 int CAP_CHOWN ;
 int CAP_FSETID ;
 int EPERM ;
 int S_ISGID ;
 int capable (int ) ;
 scalar_t__ current_fsuid () ;
 int in_group_p (scalar_t__) ;
 int inode_newsize_ok (struct inode const*,int ) ;
 int is_owner_or_cap (struct inode const*) ;

int inode_change_ok(const struct inode *inode, struct iattr *attr)
{
 unsigned int ia_valid = attr->ia_valid;





 if (ia_valid & ATTR_SIZE) {
  int error = inode_newsize_ok(inode, attr->ia_size);
  if (error)
   return error;
 }


 if (ia_valid & ATTR_FORCE)
  return 0;


 if ((ia_valid & ATTR_UID) &&
     (current_fsuid() != inode->i_uid ||
      attr->ia_uid != inode->i_uid) && !capable(CAP_CHOWN))
  return -EPERM;


 if ((ia_valid & ATTR_GID) &&
     (current_fsuid() != inode->i_uid ||
     (!in_group_p(attr->ia_gid) && attr->ia_gid != inode->i_gid)) &&
     !capable(CAP_CHOWN))
  return -EPERM;


 if (ia_valid & ATTR_MODE) {
  if (!is_owner_or_cap(inode))
   return -EPERM;

  if (!in_group_p((ia_valid & ATTR_GID) ? attr->ia_gid :
    inode->i_gid) && !capable(CAP_FSETID))
   attr->ia_mode &= ~S_ISGID;
 }


 if (ia_valid & (ATTR_MTIME_SET | ATTR_ATIME_SET | ATTR_TIMES_SET)) {
  if (!is_owner_or_cap(inode))
   return -EPERM;
 }

 return 0;
}
