
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct audit_rule {int field_count; int* fields; int* values; } ;
struct audit_field {scalar_t__ op; int type; int val; } ;
struct TYPE_4__ {int vers_ops; TYPE_1__* inode_f; struct audit_field* arch_f; struct audit_field* fields; } ;
struct audit_entry {TYPE_2__ rule; } ;
struct TYPE_3__ {scalar_t__ op; } ;
 int AUDIT_NEGATE ;
 int AUDIT_OPERATORS ;
 scalar_t__ Audit_bad ;
 scalar_t__ Audit_bitmask ;
 scalar_t__ Audit_bittest ;
 scalar_t__ Audit_equal ;
 scalar_t__ Audit_not_equal ;
 int EINVAL ;
 struct audit_entry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct audit_entry*) ;
 int S_IFMT ;
 int audit_free_rule (struct audit_entry*) ;
 struct audit_entry* audit_to_entry_common (struct audit_rule*) ;
 int audit_to_inode (TYPE_2__*,struct audit_field*) ;
 scalar_t__ audit_to_op (int) ;

__attribute__((used)) static struct audit_entry *audit_rule_to_entry(struct audit_rule *rule)
{
 struct audit_entry *entry;
 int err = 0;
 int i;

 entry = audit_to_entry_common(rule);
 if (IS_ERR(entry))
  goto exit_nofree;

 for (i = 0; i < rule->field_count; i++) {
  struct audit_field *f = &entry->rule.fields[i];
  u32 n;

  n = rule->fields[i] & (AUDIT_NEGATE|AUDIT_OPERATORS);



  if (n & AUDIT_NEGATE)
   f->op = Audit_not_equal;
  else if (!n)
   f->op = Audit_equal;
  else
   f->op = audit_to_op(n);

  entry->rule.vers_ops = (n & AUDIT_OPERATORS) ? 2 : 1;

  f->type = rule->fields[i] & ~(AUDIT_NEGATE|AUDIT_OPERATORS);
  f->val = rule->values[i];

  err = -EINVAL;
  if (f->op == Audit_bad)
   goto exit_free;

  switch(f->type) {
  default:
   goto exit_free;
  case 133:
  case 128:
  case 144:
  case 129:
  case 140:
  case 139:
  case 145:
  case 131:
  case 141:
  case 137:
  case 134:
  case 136:
  case 132:
  case 147:
  case 146:
  case 143:
  case 130:

   if (f->op == Audit_bitmask || f->op == Audit_bittest)
    goto exit_free;
   break;
  case 151:
  case 150:
  case 149:
  case 148:
   break;

  case 152:
   if (f->op != Audit_not_equal && f->op != Audit_equal)
    goto exit_free;
   entry->rule.arch_f = f;
   break;
  case 135:
   if (f->val & ~15)
    goto exit_free;
   break;
  case 142:
   if (f->val & ~S_IFMT)
    goto exit_free;
   break;
  case 138:
   err = audit_to_inode(&entry->rule, f);
   if (err)
    goto exit_free;
   break;
  }
 }

 if (entry->rule.inode_f && entry->rule.inode_f->op == Audit_not_equal)
  entry->rule.inode_f = ((void*)0);

exit_nofree:
 return entry;

exit_free:
 audit_free_rule(entry);
 return ERR_PTR(err);
}
