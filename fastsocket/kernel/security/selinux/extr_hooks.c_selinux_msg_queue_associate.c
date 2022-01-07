
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int key; struct ipc_security_struct* security; } ;
struct msg_queue {TYPE_2__ q_perm; } ;
struct ipc_security_struct {int sid; } ;
struct TYPE_3__ {int ipc_id; } ;
struct common_audit_data {TYPE_1__ u; } ;


 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int IPC ;
 int MSGQ__ASSOCIATE ;
 int SECCLASS_MSGQ ;
 int avc_has_perm (int ,int ,int ,int ,struct common_audit_data*) ;
 int current_sid () ;

__attribute__((used)) static int selinux_msg_queue_associate(struct msg_queue *msq, int msqflg)
{
 struct ipc_security_struct *isec;
 struct common_audit_data ad;
 u32 sid = current_sid();

 isec = msq->q_perm.security;

 COMMON_AUDIT_DATA_INIT(&ad, IPC);
 ad.u.ipc_id = msq->q_perm.key;

 return avc_has_perm(sid, isec->sid, SECCLASS_MSGQ,
       MSGQ__ASSOCIATE, &ad);
}
