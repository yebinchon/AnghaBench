
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subprocess_info {char* path; int wait; int retval; int * complete; int work; TYPE_1__* cred; } ;
typedef enum umh_wait { ____Placeholder_umh_wait } umh_wait ;
struct TYPE_2__ {int usage; } ;


 int BUG_ON (int) ;
 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int EBUSY ;
 int UMH_KILLABLE ;
 int UMH_NO_WAIT ;
 int atomic_read (int *) ;
 int call_usermodehelper_freeinfo (struct subprocess_info*) ;
 int done ;
 int helper_lock () ;
 int helper_unlock () ;
 int khelper_wq ;
 int queue_work (int ,int *) ;
 scalar_t__ usermodehelper_disabled ;
 int validate_creds (TYPE_1__*) ;
 int wait_for_completion (int *) ;
 int wait_for_completion_killable (int *) ;
 scalar_t__ xchg (int **,int *) ;

int call_usermodehelper_exec(struct subprocess_info *sub_info,
        enum umh_wait wait)
{
 DECLARE_COMPLETION_ONSTACK(done);
 int retval = 0;

 BUG_ON(atomic_read(&sub_info->cred->usage) != 1);
 validate_creds(sub_info->cred);

 helper_lock();
 if (sub_info->path[0] == '\0')
  goto out;

 if (!khelper_wq || usermodehelper_disabled) {
  retval = -EBUSY;
  goto out;
 }

 sub_info->complete = &done;
 sub_info->wait = wait;

 queue_work(khelper_wq, &sub_info->work);
 if (wait == UMH_NO_WAIT)
  goto unlock;

 if (wait & UMH_KILLABLE) {
  retval = wait_for_completion_killable(&done);
  if (!retval)
   goto wait_done;


  if (xchg(&sub_info->complete, ((void*)0)))
   goto unlock;

 }

 wait_for_completion(&done);
wait_done:
 retval = sub_info->retval;
out:
 call_usermodehelper_freeinfo(sub_info);
unlock:
 helper_unlock();
 return retval;
}
