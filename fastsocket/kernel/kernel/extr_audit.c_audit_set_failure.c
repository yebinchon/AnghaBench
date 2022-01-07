
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int u32 ;


 int AUDIT_FAIL_PANIC ;
 int AUDIT_FAIL_PRINTK ;
 int AUDIT_FAIL_SILENT ;
 int EINVAL ;
 int audit_do_config_change (char*,int *,int,int ,int ,int ) ;
 int audit_failure ;

__attribute__((used)) static int audit_set_failure(int state, uid_t loginuid, u32 sessionid, u32 sid)
{
 if (state != AUDIT_FAIL_SILENT
     && state != AUDIT_FAIL_PRINTK
     && state != AUDIT_FAIL_PANIC)
  return -EINVAL;

 return audit_do_config_change("audit_failure", &audit_failure, state,
          loginuid, sessionid, sid);
}
