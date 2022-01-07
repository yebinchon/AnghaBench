
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ di_id; int di_name; } ;
typedef TYPE_1__ dt_ident_t ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
dt_idhash_comp(const void *lp, const void *rp)
{
 const dt_ident_t *lhs = *((const dt_ident_t **)lp);
 const dt_ident_t *rhs = *((const dt_ident_t **)rp);

 if (lhs->di_id != rhs->di_id)
  return ((int)(lhs->di_id - rhs->di_id));
 else
  return (strcmp(lhs->di_name, rhs->di_name));
}
