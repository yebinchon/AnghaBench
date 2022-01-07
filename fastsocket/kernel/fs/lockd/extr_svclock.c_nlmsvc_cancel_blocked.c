
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_17__ {scalar_t__ fl_end; scalar_t__ fl_start; int fl_pid; } ;
struct nlm_lock {TYPE_6__ fl; } ;
struct nlm_file {int f_mutex; TYPE_5__* f_file; } ;
struct nlm_block {TYPE_10__* b_call; TYPE_7__* b_file; } ;
typedef int __be32 ;
struct TYPE_19__ {int fl; } ;
struct TYPE_20__ {TYPE_8__ lock; } ;
struct TYPE_18__ {int f_file; } ;
struct TYPE_15__ {TYPE_3__* dentry; } ;
struct TYPE_16__ {TYPE_4__ f_path; } ;
struct TYPE_14__ {TYPE_2__* d_inode; } ;
struct TYPE_13__ {int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_12__ {int s_id; } ;
struct TYPE_11__ {TYPE_9__ a_args; } ;


 int dprintk (char*,int ,int ,int ,long long,long long) ;
 scalar_t__ locks_in_grace () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nlm_granted ;
 int nlm_lck_denied ;
 int nlm_lck_denied_grace_period ;
 struct nlm_block* nlmsvc_lookup_block (struct nlm_file*,struct nlm_lock*) ;
 int nlmsvc_release_block (struct nlm_block*) ;
 int nlmsvc_unlink_block (struct nlm_block*) ;
 int vfs_cancel_lock (int ,int *) ;

__be32
nlmsvc_cancel_blocked(struct nlm_file *file, struct nlm_lock *lock)
{
 struct nlm_block *block;
 int status = 0;

 dprintk("lockd: nlmsvc_cancel(%s/%ld, pi=%d, %Ld-%Ld)\n",
    file->f_file->f_path.dentry->d_inode->i_sb->s_id,
    file->f_file->f_path.dentry->d_inode->i_ino,
    lock->fl.fl_pid,
    (long long)lock->fl.fl_start,
    (long long)lock->fl.fl_end);

 if (locks_in_grace())
  return nlm_lck_denied_grace_period;

 mutex_lock(&file->f_mutex);
 block = nlmsvc_lookup_block(file, lock);
 mutex_unlock(&file->f_mutex);
 if (block != ((void*)0)) {
  vfs_cancel_lock(block->b_file->f_file,
    &block->b_call->a_args.lock.fl);
  status = nlmsvc_unlink_block(block);
  nlmsvc_release_block(block);
 }
 return status ? nlm_lck_denied : nlm_granted;
}
