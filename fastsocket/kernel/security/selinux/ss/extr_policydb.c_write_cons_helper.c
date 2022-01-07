
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct policydb {int dummy; } ;
struct constraint_node {int permissions; struct constraint_expr* expr; struct constraint_node* next; } ;
struct constraint_expr {int expr_type; int attr; int op; int names; struct constraint_expr* next; } ;
typedef int __le32 ;



 int cpu_to_le32 (int) ;
 int ebitmap_write (int *,void*) ;
 int put_entry (int *,int,int,void*) ;

__attribute__((used)) static int write_cons_helper(struct policydb *p, struct constraint_node *node,
        void *fp)
{
 struct constraint_node *c;
 struct constraint_expr *e;
 __le32 buf[3];
 u32 nel;
 int rc;

 for (c = node; c; c = c->next) {
  nel = 0;
  for (e = c->expr; e; e = e->next)
   nel++;
  buf[0] = cpu_to_le32(c->permissions);
  buf[1] = cpu_to_le32(nel);
  rc = put_entry(buf, sizeof(u32), 2, fp);
  if (rc)
   return rc;
  for (e = c->expr; e; e = e->next) {
   buf[0] = cpu_to_le32(e->expr_type);
   buf[1] = cpu_to_le32(e->attr);
   buf[2] = cpu_to_le32(e->op);
   rc = put_entry(buf, sizeof(u32), 3, fp);
   if (rc)
    return rc;

   switch (e->expr_type) {
   case 128:
    rc = ebitmap_write(&e->names, fp);
    if (rc)
     return rc;
    break;
   default:
    break;
   }
  }
 }

 return 0;
}
