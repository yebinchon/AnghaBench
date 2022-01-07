
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_krule {int field_count; struct audit_field* filterkey; struct audit_field* fields; scalar_t__ watch; } ;
struct audit_field {int lsm_rule; struct audit_field* lsm_str; struct audit_krule rule; } ;
struct audit_entry {int lsm_rule; struct audit_entry* lsm_str; struct audit_krule rule; } ;


 int audit_put_watch (scalar_t__) ;
 int kfree (struct audit_field*) ;
 int security_audit_rule_free (int ) ;

__attribute__((used)) static inline void audit_free_rule(struct audit_entry *e)
{
 int i;
 struct audit_krule *erule = &e->rule;

 if (erule->watch)
  audit_put_watch(erule->watch);
 if (erule->fields)
  for (i = 0; i < erule->field_count; i++) {
   struct audit_field *f = &erule->fields[i];
   kfree(f->lsm_str);
   security_audit_rule_free(f->lsm_rule);
  }
 kfree(erule->fields);
 kfree(erule->filterkey);
 kfree(e);
}
