
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct common_audit_data {int (* lsm_post_audit ) (struct audit_buffer*,struct common_audit_data*) ;int (* lsm_pre_audit ) (struct audit_buffer*,struct common_audit_data*) ;} ;
struct audit_buffer {int dummy; } ;
struct TYPE_2__ {int audit_context; } ;


 int AUDIT_AVC ;
 int GFP_ATOMIC ;
 int audit_log_end (struct audit_buffer*) ;
 struct audit_buffer* audit_log_start (int ,int ,int ) ;
 TYPE_1__* current ;
 int dump_common_audit_data (struct audit_buffer*,struct common_audit_data*) ;
 int stub1 (struct audit_buffer*,struct common_audit_data*) ;
 int stub2 (struct audit_buffer*,struct common_audit_data*) ;

void common_lsm_audit(struct common_audit_data *a)
{
 struct audit_buffer *ab;

 if (a == ((void*)0))
  return;

 ab = audit_log_start(current->audit_context, GFP_ATOMIC, AUDIT_AVC);

 if (ab == ((void*)0))
  return;

 if (a->lsm_pre_audit)
  a->lsm_pre_audit(ab, a);

 dump_common_audit_data(ab, a);

 if (a->lsm_post_audit)
  a->lsm_post_audit(ab, a);

 audit_log_end(ab);
}
