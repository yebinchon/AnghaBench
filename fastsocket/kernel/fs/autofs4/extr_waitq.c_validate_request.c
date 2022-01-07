
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int d_name; struct dentry* d_parent; scalar_t__ d_inode; } ;
struct autofs_wait_queue {int dummy; } ;
struct autofs_sb_info {scalar_t__ catatonic; int wq_mutex; } ;
struct autofs_info {int flags; } ;
typedef enum autofs_notify { ____Placeholder_autofs_notify } autofs_notify ;


 int AUTOFS_INF_EXPIRING ;
 int EINTR ;
 int ENOENT ;
 int HZ ;
 int IS_ROOT (struct dentry*) ;
 int NFY_MOUNT ;
 int NFY_NONE ;
 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 struct autofs_wait_queue* autofs4_find_wait (struct autofs_sb_info*,struct qstr*) ;
 struct dentry* d_lookup (struct dentry*,int *) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int dput (struct dentry*) ;
 scalar_t__ have_submounts (struct dentry*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int schedule_timeout_interruptible (int) ;

__attribute__((used)) static int validate_request(struct autofs_wait_queue **wait,
       struct autofs_sb_info *sbi,
       struct qstr *qstr,
       struct dentry*dentry, enum autofs_notify notify)
{
 struct autofs_wait_queue *wq;
 struct autofs_info *ino;

 if (sbi->catatonic)
  return -ENOENT;


 wq = autofs4_find_wait(sbi, qstr);
 if (wq) {
  *wait = wq;
  return 1;
 }

 *wait = ((void*)0);


 ino = autofs4_dentry_ino(dentry);
 if (!ino)
  return 1;





 if (notify == NFY_NONE) {







  while (ino->flags & AUTOFS_INF_EXPIRING) {
   mutex_unlock(&sbi->wq_mutex);
   schedule_timeout_interruptible(HZ/10);
   if (mutex_lock_interruptible(&sbi->wq_mutex))
    return -EINTR;

   if (sbi->catatonic)
    return -ENOENT;

   wq = autofs4_find_wait(sbi, qstr);
   if (wq) {
    *wait = wq;
    return 1;
   }
  }






  return 0;
 }





 if (notify == NFY_MOUNT) {
  struct dentry *new = ((void*)0);
  int valid = 1;
  if (!IS_ROOT(dentry)) {
   if (dentry->d_inode && d_unhashed(dentry)) {
    struct dentry *parent = dentry->d_parent;
    new = d_lookup(parent, &dentry->d_name);
    if (new)
     dentry = new;
   }
  }
  if (have_submounts(dentry))
   valid = 0;

  if (new)
   dput(new);
  return valid;
 }

 return 1;
}
