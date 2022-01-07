
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audmgr_disable_msg {int handle; int hdr; } ;
struct audmgr {scalar_t__ state; int wait; int ept; int handle; } ;
typedef int msg ;


 int AUDMGR_DISABLE_CLIENT ;
 int AUDMGR_PROG ;
 int BUG () ;
 int ENODEV ;
 int HZ ;
 scalar_t__ STATE_DISABLED ;
 scalar_t__ STATE_DISABLING ;
 int cpu_to_be32 (int ) ;
 int msm_rpc_get_vers (int ) ;
 int msm_rpc_setup_req (int *,int ,int ,int ) ;
 int msm_rpc_write (int ,struct audmgr_disable_msg*,int) ;
 int pr_err (char*,scalar_t__) ;
 int wait_event_timeout (int ,int,int) ;

int audmgr_disable(struct audmgr *am)
{
 struct audmgr_disable_msg msg;
 int rc;

 if (am->state == STATE_DISABLED)
  return 0;

 msm_rpc_setup_req(&msg.hdr, AUDMGR_PROG, msm_rpc_get_vers(am->ept),
     AUDMGR_DISABLE_CLIENT);
 msg.handle = cpu_to_be32(am->handle);

 am->state = STATE_DISABLING;

 rc = msm_rpc_write(am->ept, &msg, sizeof(msg));
 if (rc < 0)
  return rc;

 rc = wait_event_timeout(am->wait, am->state != STATE_DISABLING, 15 * HZ);
 if (rc == 0) {
  pr_err("audmgr_disable: ARM9 did not reply to RPC am->state = %d\n", am->state);
  BUG();
 }

 if (am->state == STATE_DISABLED)
  return 0;

 pr_err("audmgr: unexpected state %d while disabling?!\n", am->state);
 return -ENODEV;
}
