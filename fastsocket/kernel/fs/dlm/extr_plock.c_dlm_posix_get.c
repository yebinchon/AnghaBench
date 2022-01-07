
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {int ex; int rv; int end; int start; scalar_t__ pid; void* owner; scalar_t__ number; int fsid; int optype; } ;
struct plock_op {scalar_t__ done; TYPE_2__ info; int list; } ;
struct file_lock {scalar_t__ fl_type; int fl_end; int fl_start; scalar_t__ fl_pid; int fl_flags; scalar_t__ fl_owner; TYPE_1__* fl_lmops; } ;
struct file {int dummy; } ;
struct dlm_ls {int ls_global_id; } ;
typedef int dlm_lockspace_t ;
typedef void* __u64 ;
struct TYPE_3__ {scalar_t__ fl_grant; } ;


 int DLM_PLOCK_OP_GET ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int FL_POSIX ;
 scalar_t__ F_RDLCK ;
 scalar_t__ F_UNLCK ;
 scalar_t__ F_WRLCK ;
 int GFP_NOFS ;
 struct dlm_ls* dlm_find_lockspace_local (int *) ;
 int dlm_put_lockspace (struct dlm_ls*) ;
 int kfree (struct plock_op*) ;
 struct plock_op* kzalloc (int,int ) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int locks_init_lock (struct file_lock*) ;
 int log_error (struct dlm_ls*,char*,unsigned long long) ;
 int ops_lock ;
 int recv_wq ;
 int send_op (struct plock_op*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int) ;

int dlm_posix_get(dlm_lockspace_t *lockspace, u64 number, struct file *file,
    struct file_lock *fl)
{
 struct dlm_ls *ls;
 struct plock_op *op;
 int rv;

 ls = dlm_find_lockspace_local(lockspace);
 if (!ls)
  return -EINVAL;

 op = kzalloc(sizeof(*op), GFP_NOFS);
 if (!op) {
  rv = -ENOMEM;
  goto out;
 }

 op->info.optype = DLM_PLOCK_OP_GET;
 op->info.pid = fl->fl_pid;
 op->info.ex = (fl->fl_type == F_WRLCK);
 op->info.fsid = ls->ls_global_id;
 op->info.number = number;
 op->info.start = fl->fl_start;
 op->info.end = fl->fl_end;
 if (fl->fl_lmops && fl->fl_lmops->fl_grant)
  op->info.owner = (__u64) fl->fl_pid;
 else
  op->info.owner = (__u64)(long) fl->fl_owner;

 send_op(op);
 wait_event(recv_wq, (op->done != 0));

 spin_lock(&ops_lock);
 if (!list_empty(&op->list)) {
  log_error(ls, "dlm_posix_get: op on list %llx",
     (unsigned long long)number);
  list_del(&op->list);
 }
 spin_unlock(&ops_lock);




 rv = op->info.rv;

 fl->fl_type = F_UNLCK;
 if (rv == -ENOENT)
  rv = 0;
 else if (rv > 0) {
  locks_init_lock(fl);
  fl->fl_type = (op->info.ex) ? F_WRLCK : F_RDLCK;
  fl->fl_flags = FL_POSIX;
  fl->fl_pid = op->info.pid;
  fl->fl_start = op->info.start;
  fl->fl_end = op->info.end;
  rv = 0;
 }

 kfree(op);
out:
 dlm_put_lockspace(ls);
 return rv;
}
