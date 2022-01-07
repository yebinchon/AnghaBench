
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct smk_audit_info {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cred; } ;
struct TYPE_3__ {int * security; } ;


 int CAP_MAC_OVERRIDE ;
 scalar_t__ capable (int ) ;
 TYPE_2__* current ;
 char* current_security () ;
 int smack_log (char*,char*,int ,int,struct smk_audit_info*) ;
 int * smack_onlycap ;
 int smk_access (char*,char*,int ,int *) ;

int smk_curacc(char *obj_label, u32 mode, struct smk_audit_info *a)
{
 int rc;
 char *sp = current_security();

 rc = smk_access(sp, obj_label, mode, ((void*)0));
 if (rc == 0)
  goto out_audit;






 if (smack_onlycap != ((void*)0) && smack_onlycap != current->cred->security)
  goto out_audit;

 if (capable(CAP_MAC_OVERRIDE))
  return 0;

out_audit:




 return rc;
}
