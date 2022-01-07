
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int i_mode; int i_gid; TYPE_1__* i_sb; void* i_ctime; void* i_mtime; void* i_atime; int i_uid; } ;
struct iattr {unsigned int ia_valid; int ia_mode; int ia_ctime; int ia_mtime; int ia_atime; int ia_gid; int ia_uid; } ;
struct TYPE_2__ {int s_time_gran; } ;


 unsigned int ATTR_ATIME ;
 unsigned int ATTR_CTIME ;
 unsigned int ATTR_GID ;
 unsigned int ATTR_MODE ;
 unsigned int ATTR_MTIME ;
 unsigned int ATTR_UID ;
 int CAP_FSETID ;
 int S_ISGID ;
 int capable (int ) ;
 int in_group_p (int ) ;
 void* timespec_trunc (int ,int ) ;

void generic_setattr(struct inode *inode, const struct iattr *attr)
{
 unsigned int ia_valid = attr->ia_valid;

 if (ia_valid & ATTR_UID)
  inode->i_uid = attr->ia_uid;
 if (ia_valid & ATTR_GID)
  inode->i_gid = attr->ia_gid;
 if (ia_valid & ATTR_ATIME)
  inode->i_atime = timespec_trunc(attr->ia_atime,
      inode->i_sb->s_time_gran);
 if (ia_valid & ATTR_MTIME)
  inode->i_mtime = timespec_trunc(attr->ia_mtime,
      inode->i_sb->s_time_gran);
 if (ia_valid & ATTR_CTIME)
  inode->i_ctime = timespec_trunc(attr->ia_ctime,
      inode->i_sb->s_time_gran);
 if (ia_valid & ATTR_MODE) {
  umode_t mode = attr->ia_mode;

  if (!in_group_p(inode->i_gid) && !capable(CAP_FSETID))
   mode &= ~S_ISGID;
  inode->i_mode = mode;
 }
}
