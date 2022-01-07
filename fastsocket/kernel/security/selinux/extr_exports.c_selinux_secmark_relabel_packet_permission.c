
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_security_struct {int sid; } ;


 int PACKET__RELABELTO ;
 int SECCLASS_PACKET ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 struct task_security_struct* current_security () ;
 scalar_t__ selinux_enabled ;

int selinux_secmark_relabel_packet_permission(u32 sid)
{
 if (selinux_enabled) {
  const struct task_security_struct *__tsec;
  u32 tsid;

  __tsec = current_security();
  tsid = __tsec->sid;

  return avc_has_perm(tsid, sid, SECCLASS_PACKET,
        PACKET__RELABELTO, ((void*)0));
 }
 return 0;
}
