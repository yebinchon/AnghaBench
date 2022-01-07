
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


typedef int u8 ;
struct TYPE_7__ {int len; int * data; } ;
struct TYPE_8__ {TYPE_1__ oh; int svid; int caller; int fh; int fl; } ;
struct TYPE_9__ {TYPE_2__ lock; } ;
struct nlm_rqst {TYPE_3__ a_args; int * a_owner; } ;
struct TYPE_10__ {int len; int * data; } ;
struct TYPE_12__ {int fl_pid; } ;
struct nlm_lock {TYPE_4__ oh; TYPE_6__ fl; int fh; } ;
struct TYPE_11__ {int nodename; } ;


 int GFP_KERNEL ;
 int NLMCLNT_OHSIZE ;
 void* kmalloc (int,int ) ;
 int locks_copy_lock (int *,TYPE_6__*) ;
 int memcpy (int *,int *,int) ;
 TYPE_5__* utsname () ;

__attribute__((used)) static int nlmsvc_setgrantargs(struct nlm_rqst *call, struct nlm_lock *lock)
{
 locks_copy_lock(&call->a_args.lock.fl, &lock->fl);
 memcpy(&call->a_args.lock.fh, &lock->fh, sizeof(call->a_args.lock.fh));
 call->a_args.lock.caller = utsname()->nodename;
 call->a_args.lock.oh.len = lock->oh.len;


 call->a_args.lock.oh.data = call->a_owner;
 call->a_args.lock.svid = lock->fl.fl_pid;

 if (lock->oh.len > NLMCLNT_OHSIZE) {
  void *data = kmalloc(lock->oh.len, GFP_KERNEL);
  if (!data)
   return 0;
  call->a_args.lock.oh.data = (u8 *) data;
 }

 memcpy(call->a_args.lock.oh.data, lock->oh.data, lock->oh.len);
 return 1;
}
