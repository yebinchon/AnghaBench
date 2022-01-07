
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct msg_security_struct {scalar_t__ sid; } ;
struct TYPE_4__ {int key; struct ipc_security_struct* security; } ;
struct msg_queue {TYPE_2__ q_perm; } ;
struct msg_msg {struct msg_security_struct* security; } ;
struct ipc_security_struct {scalar_t__ sid; } ;
struct TYPE_3__ {int ipc_id; } ;
struct common_audit_data {TYPE_1__ u; } ;


 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int IPC ;
 int MSGQ__ENQUEUE ;
 int MSGQ__WRITE ;
 int MSG__SEND ;
 int SECCLASS_MSG ;
 int SECCLASS_MSGQ ;
 scalar_t__ SECINITSID_UNLABELED ;
 int avc_has_perm (scalar_t__,scalar_t__,int ,int ,struct common_audit_data*) ;
 scalar_t__ current_sid () ;
 int security_transition_sid (scalar_t__,scalar_t__,int ,scalar_t__*) ;

__attribute__((used)) static int selinux_msg_queue_msgsnd(struct msg_queue *msq, struct msg_msg *msg, int msqflg)
{
 struct ipc_security_struct *isec;
 struct msg_security_struct *msec;
 struct common_audit_data ad;
 u32 sid = current_sid();
 int rc;

 isec = msq->q_perm.security;
 msec = msg->security;




 if (msec->sid == SECINITSID_UNLABELED) {




  rc = security_transition_sid(sid, isec->sid, SECCLASS_MSG,
          &msec->sid);
  if (rc)
   return rc;
 }

 COMMON_AUDIT_DATA_INIT(&ad, IPC);
 ad.u.ipc_id = msq->q_perm.key;


 rc = avc_has_perm(sid, isec->sid, SECCLASS_MSGQ,
     MSGQ__WRITE, &ad);
 if (!rc)

  rc = avc_has_perm(sid, msec->sid, SECCLASS_MSG,
      MSG__SEND, &ad);
 if (!rc)

  rc = avc_has_perm(msec->sid, isec->sid, SECCLASS_MSGQ,
      MSGQ__ENQUEUE, &ad);

 return rc;
}
