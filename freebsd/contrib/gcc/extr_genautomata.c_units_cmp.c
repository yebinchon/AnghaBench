
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* unit_decl_t ;
struct TYPE_2__ {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
units_cmp (const void *unit1, const void *unit2)
{
  const unit_decl_t u1 = *(unit_decl_t *) unit1;
  const unit_decl_t u2 = *(unit_decl_t *) unit2;

  return strcmp (u1->name, u2->name);
}
