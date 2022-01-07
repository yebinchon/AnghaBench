
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fE; int inheritable; int permitted; } ;
struct audit_names {int fcap_ver; TYPE_1__ fcap; } ;
struct audit_buffer {int dummy; } ;
typedef int kernel_cap_t ;


 int audit_log_cap (struct audit_buffer*,char*,int *) ;
 int audit_log_format (struct audit_buffer*,char*,int ,int ) ;
 int cap_isclear (int ) ;

__attribute__((used)) static void audit_log_fcaps(struct audit_buffer *ab, struct audit_names *name)
{
 kernel_cap_t *perm = &name->fcap.permitted;
 kernel_cap_t *inh = &name->fcap.inheritable;
 int log = 0;

 if (!cap_isclear(*perm)) {
  audit_log_cap(ab, "cap_fp", perm);
  log = 1;
 }
 if (!cap_isclear(*inh)) {
  audit_log_cap(ab, "cap_fi", inh);
  log = 1;
 }

 if (log)
  audit_log_format(ab, " cap_fe=%d cap_fver=%x", name->fcap.fE, name->fcap_ver);
}
