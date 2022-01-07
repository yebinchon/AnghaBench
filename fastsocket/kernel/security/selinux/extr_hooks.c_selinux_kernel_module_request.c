
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {char* kmod_name; } ;
struct common_audit_data {TYPE_1__ u; } ;


 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int KMOD ;
 int SECCLASS_SYSTEM ;
 int SECINITSID_KERNEL ;
 int SYSTEM__MODULE_REQUEST ;
 int avc_has_perm (int ,int ,int ,int ,struct common_audit_data*) ;
 int current ;
 int task_sid (int ) ;

__attribute__((used)) static int selinux_kernel_module_request(char *kmod_name)
{
 u32 sid;
 struct common_audit_data ad;

 sid = task_sid(current);

 COMMON_AUDIT_DATA_INIT(&ad, KMOD);
 ad.u.kmod_name = kmod_name;

 return avc_has_perm(sid, SECINITSID_KERNEL, SECCLASS_SYSTEM,
       SYSTEM__MODULE_REQUEST, &ad);
}
