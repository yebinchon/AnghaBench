
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct role_datum {int value; scalar_t__ bounds; } ;
struct TYPE_2__ {int nprim; } ;
struct policydb {struct role_datum** role_val_to_struct; void** p_role_val_to_name; TYPE_1__ p_roles; } ;


 int EINVAL ;

__attribute__((used)) static int role_index(void *key, void *datum, void *datap)
{
 struct policydb *p;
 struct role_datum *role;

 role = datum;
 p = datap;
 if (!role->value
     || role->value > p->p_roles.nprim
     || role->bounds > p->p_roles.nprim)
  return -EINVAL;
 p->p_role_val_to_name[role->value - 1] = key;
 p->role_val_to_struct[role->value - 1] = role;
 return 0;
}
