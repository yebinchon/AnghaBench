
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int DLM_LKSTS_WAITING ;
 int EAGAIN ;
 int EINPROGRESS ;
 int add_lkb (struct dlm_rsb*,struct dlm_lkb*,int ) ;
 int add_timeout (struct dlm_lkb*) ;
 scalar_t__ can_be_granted (struct dlm_rsb*,struct dlm_lkb*,int,int ,int *) ;
 scalar_t__ can_be_queued (struct dlm_lkb*) ;
 int grant_lock (struct dlm_rsb*,struct dlm_lkb*) ;
 int queue_cast (struct dlm_rsb*,struct dlm_lkb*,int) ;

__attribute__((used)) static int do_request(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 int error = 0;

 if (can_be_granted(r, lkb, 1, 0, ((void*)0))) {
  grant_lock(r, lkb);
  queue_cast(r, lkb, 0);
  goto out;
 }

 if (can_be_queued(lkb)) {
  error = -EINPROGRESS;
  add_lkb(r, lkb, DLM_LKSTS_WAITING);
  add_timeout(lkb);
  goto out;
 }

 error = -EAGAIN;
 queue_cast(r, lkb, -EAGAIN);
 out:
 return error;
}
