
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct user_datum {int roles; } ;
struct role_datum {int types; } ;
struct TYPE_6__ {scalar_t__ nprim; } ;
struct TYPE_5__ {int nprim; } ;
struct TYPE_4__ {int nprim; } ;
struct policydb {struct user_datum** user_val_to_struct; struct role_datum** role_val_to_struct; TYPE_3__ p_types; TYPE_2__ p_users; TYPE_1__ p_roles; } ;
struct context {int role; int user; scalar_t__ type; } ;


 int OBJECT_R_VAL ;
 int ebitmap_get_bit (int *,int) ;
 int mls_context_isvalid (struct policydb*,struct context*) ;

int policydb_context_isvalid(struct policydb *p, struct context *c)
{
 struct role_datum *role;
 struct user_datum *usrdatum;

 if (!c->role || c->role > p->p_roles.nprim)
  return 0;

 if (!c->user || c->user > p->p_users.nprim)
  return 0;

 if (!c->type || c->type > p->p_types.nprim)
  return 0;

 if (c->role != OBJECT_R_VAL) {



  role = p->role_val_to_struct[c->role - 1];
  if (!ebitmap_get_bit(&role->types,
         c->type - 1))

   return 0;




  usrdatum = p->user_val_to_struct[c->user - 1];
  if (!usrdatum)
   return 0;

  if (!ebitmap_get_bit(&usrdatum->roles,
         c->role - 1))

   return 0;
 }

 if (!mls_context_isvalid(p, c))
  return 0;

 return 1;
}
