
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iattr {int ia_valid; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_mutex; } ;


 int ATTR_KILL_PRIV ;
 int ATTR_KILL_SGID ;
 int ATTR_KILL_SUID ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int notify_change (struct dentry*,struct iattr*) ;

__attribute__((used)) static void kill_suid(struct dentry *dentry)
{
 struct iattr ia;
 ia.ia_valid = ATTR_KILL_SUID | ATTR_KILL_SGID | ATTR_KILL_PRIV;

 mutex_lock(&dentry->d_inode->i_mutex);
 notify_change(dentry, &ia);
 mutex_unlock(&dentry->d_inode->i_mutex);
}
