
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int u32 ;


 scalar_t__ AUDIT_LOCKED ;
 scalar_t__ AUDIT_OFF ;
 int EPERM ;
 scalar_t__ audit_enabled ;
 int audit_log_config_change (char*,int,int,int ,int ,int ,int) ;

__attribute__((used)) static int audit_do_config_change(char *function_name, int *to_change,
      int new, uid_t loginuid, u32 sessionid,
      u32 sid)
{
 int allow_changes, rc = 0, old = *to_change;


 if (audit_enabled == AUDIT_LOCKED)
  allow_changes = 0;
 else
  allow_changes = 1;

 if (audit_enabled != AUDIT_OFF) {
  rc = audit_log_config_change(function_name, new, old, loginuid,
          sessionid, sid, allow_changes);
  if (rc)
   allow_changes = 0;
 }


 if (allow_changes == 1)
  *to_change = new;

 else if (rc == 0)
  rc = -EPERM;
 return rc;
}
