
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int key; struct ipc_security_struct* security; } ;
struct msg_queue {TYPE_2__ q_perm; } ;
struct ipc_security_struct {int sid; } ;
struct TYPE_4__ {int ipc_id; } ;
struct common_audit_data {TYPE_1__ u; } ;


 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int IPC ;
 int MSGQ__CREATE ;
 int SECCLASS_MSGQ ;
 int avc_has_perm (int ,int ,int ,int ,struct common_audit_data*) ;
 int current ;
 int current_sid () ;
 int ipc_alloc_security (int ,TYPE_2__*,int ) ;
 int ipc_free_security (TYPE_2__*) ;

__attribute__((used)) static int selinux_msg_queue_alloc_security(struct msg_queue *msq)
{
 struct ipc_security_struct *isec;
 struct common_audit_data ad;
 u32 sid = current_sid();
 int rc;

 rc = ipc_alloc_security(current, &msq->q_perm, SECCLASS_MSGQ);
 if (rc)
  return rc;

 isec = msq->q_perm.security;

 COMMON_AUDIT_DATA_INIT(&ad, IPC);
 ad.u.ipc_id = msq->q_perm.key;

 rc = avc_has_perm(sid, isec->sid, SECCLASS_MSGQ,
     MSGQ__CREATE, &ad);
 if (rc) {
  ipc_free_security(&msq->q_perm);
  return rc;
 }
 return 0;
}
