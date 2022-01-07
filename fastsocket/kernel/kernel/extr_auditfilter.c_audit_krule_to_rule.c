
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audit_rule {int flags; int field_count; int * mask; int * fields; int * values; int action; } ;
struct audit_krule {int flags; int listnr; int field_count; int vers_ops; int * mask; TYPE_1__* fields; int action; } ;
struct TYPE_2__ {size_t op; int type; int val; } ;


 int AUDIT_BITMASK_SIZE ;
 int AUDIT_NEGATE ;
 size_t Audit_not_equal ;
 int GFP_KERNEL ;
 int * audit_ops ;
 struct audit_rule* kzalloc (int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct audit_rule *audit_krule_to_rule(struct audit_krule *krule)
{
 struct audit_rule *rule;
 int i;

 rule = kzalloc(sizeof(*rule), GFP_KERNEL);
 if (unlikely(!rule))
  return ((void*)0);

 rule->flags = krule->flags | krule->listnr;
 rule->action = krule->action;
 rule->field_count = krule->field_count;
 for (i = 0; i < rule->field_count; i++) {
  rule->values[i] = krule->fields[i].val;
  rule->fields[i] = krule->fields[i].type;

  if (krule->vers_ops == 1) {
   if (krule->fields[i].op == Audit_not_equal)
    rule->fields[i] |= AUDIT_NEGATE;
  } else {
   rule->fields[i] |= audit_ops[krule->fields[i].op];
  }
 }
 for (i = 0; i < AUDIT_BITMASK_SIZE; i++) rule->mask[i] = krule->mask[i];

 return rule;
}
