
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int u32 ;


 int AUDIT_LOCKED ;
 int AUDIT_OFF ;
 int EINVAL ;
 int audit_do_config_change (char*,int *,int,int ,int ,int ) ;
 int audit_enabled ;
 int audit_ever_enabled ;

__attribute__((used)) static int audit_set_enabled(int state, uid_t loginuid, u32 sessionid, u32 sid)
{
 int rc;
 if (state < AUDIT_OFF || state > AUDIT_LOCKED)
  return -EINVAL;

 rc = audit_do_config_change("audit_enabled", &audit_enabled, state,
         loginuid, sessionid, sid);

 if (!rc)
  audit_ever_enabled |= !!state;

 return rc;
}
