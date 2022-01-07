
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gid; int uid; int pid; } ;
struct netlink_skb_parms {int sid; int loginuid; TYPE_1__ creds; } ;
struct audit_krule {int field_count; int action; struct audit_field* fields; } ;
struct audit_field {int type; int lsm_rule; int op; int val; } ;
typedef enum audit_state { ____Placeholder_audit_state } audit_state ;



 int AUDIT_DISABLED ;




 int AUDIT_RECORD_CONTEXT ;






 int audit_comparator (int ,int ,int ) ;
 int security_audit_rule_match (int ,int,int ,int ,int *) ;

__attribute__((used)) static int audit_filter_user_rules(struct netlink_skb_parms *cb,
       struct audit_krule *rule,
       enum audit_state *state)
{
 int i;

 for (i = 0; i < rule->field_count; i++) {
  struct audit_field *f = &rule->fields[i];
  int result = 0;

  switch (f->type) {
  case 134:
   result = audit_comparator(cb->creds.pid, f->op, f->val);
   break;
  case 128:
   result = audit_comparator(cb->creds.uid, f->op, f->val);
   break;
  case 137:
   result = audit_comparator(cb->creds.gid, f->op, f->val);
   break;
  case 136:
   result = audit_comparator(cb->loginuid, f->op, f->val);
   break;
  case 129:
  case 132:
  case 130:
  case 131:
  case 133:
   if (f->lsm_rule)
    result = security_audit_rule_match(cb->sid,
           f->type,
           f->op,
           f->lsm_rule,
           ((void*)0));
   break;
  }

  if (!result)
   return 0;
 }
 switch (rule->action) {
 case 135: *state = AUDIT_DISABLED; break;
 case 138: *state = AUDIT_RECORD_CONTEXT; break;
 }
 return 1;
}
