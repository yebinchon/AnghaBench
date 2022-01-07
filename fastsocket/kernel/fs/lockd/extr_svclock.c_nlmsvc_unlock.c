
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int fl_type; scalar_t__ fl_end; scalar_t__ fl_start; int fl_pid; } ;
struct nlm_lock {TYPE_6__ fl; } ;
struct nlm_file {TYPE_5__* f_file; } ;
typedef int __be32 ;
struct TYPE_9__ {TYPE_2__* dentry; } ;
struct TYPE_11__ {TYPE_3__ f_path; } ;
struct TYPE_10__ {int s_id; } ;
struct TYPE_8__ {TYPE_1__* d_inode; } ;
struct TYPE_7__ {int i_ino; TYPE_4__* i_sb; } ;


 int F_SETLK ;
 int F_UNLCK ;
 int dprintk (char*,int ,int ,int ,long long,long long) ;
 int nlm_granted ;
 int nlm_lck_denied_nolocks ;
 int nlmsvc_cancel_blocked (struct nlm_file*,struct nlm_lock*) ;
 int vfs_lock_file (TYPE_5__*,int ,TYPE_6__*,int *) ;

__be32
nlmsvc_unlock(struct nlm_file *file, struct nlm_lock *lock)
{
 int error;

 dprintk("lockd: nlmsvc_unlock(%s/%ld, pi=%d, %Ld-%Ld)\n",
    file->f_file->f_path.dentry->d_inode->i_sb->s_id,
    file->f_file->f_path.dentry->d_inode->i_ino,
    lock->fl.fl_pid,
    (long long)lock->fl.fl_start,
    (long long)lock->fl.fl_end);


 nlmsvc_cancel_blocked(file, lock);

 lock->fl.fl_type = F_UNLCK;
 error = vfs_lock_file(file->f_file, F_SETLK, &lock->fl, ((void*)0));

 return (error < 0)? nlm_lck_denied_nolocks : nlm_granted;
}
