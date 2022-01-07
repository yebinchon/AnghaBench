
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinux_audit_rule {int au_ctxt; } ;


 int context_destroy (int *) ;
 int kfree (struct selinux_audit_rule*) ;

void selinux_audit_rule_free(void *vrule)
{
 struct selinux_audit_rule *rule = vrule;

 if (rule) {
  context_destroy(&rule->au_ctxt);
  kfree(rule);
 }
}
