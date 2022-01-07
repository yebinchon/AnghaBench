
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct inode {int i_mutex; int i_mode; } ;
struct iattr {int ia_valid; scalar_t__ ia_gid; scalar_t__ ia_uid; } ;
struct dentry {struct inode* d_inode; } ;
typedef scalar_t__ gid_t ;


 int ATTR_CTIME ;
 int ATTR_GID ;
 int ATTR_KILL_PRIV ;
 int ATTR_KILL_SGID ;
 int ATTR_KILL_SUID ;
 int ATTR_UID ;
 int S_ISDIR (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int notify_change (struct dentry*,struct iattr*) ;

__attribute__((used)) static int chown_common(struct dentry * dentry, uid_t user, gid_t group)
{
 struct inode *inode = dentry->d_inode;
 int error;
 struct iattr newattrs;

 newattrs.ia_valid = ATTR_CTIME;
 if (user != (uid_t) -1) {
  newattrs.ia_valid |= ATTR_UID;
  newattrs.ia_uid = user;
 }
 if (group != (gid_t) -1) {
  newattrs.ia_valid |= ATTR_GID;
  newattrs.ia_gid = group;
 }
 if (!S_ISDIR(inode->i_mode))
  newattrs.ia_valid |=
   ATTR_KILL_SUID | ATTR_KILL_SGID | ATTR_KILL_PRIV;
 mutex_lock(&inode->i_mutex);
 error = notify_change(dentry, &newattrs);
 mutex_unlock(&inode->i_mutex);

 return error;
}
