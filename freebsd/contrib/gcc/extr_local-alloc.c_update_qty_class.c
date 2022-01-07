
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
struct TYPE_2__ {int min_class; int alternate_class; } ;


 TYPE_1__* qty ;
 int reg_alternate_class (int) ;
 scalar_t__ reg_class_subset_p (int,int) ;
 int reg_preferred_class (int) ;

__attribute__((used)) static void
update_qty_class (int qtyno, int reg)
{
  enum reg_class rclass = reg_preferred_class (reg);
  if (reg_class_subset_p (rclass, qty[qtyno].min_class))
    qty[qtyno].min_class = rclass;

  rclass = reg_alternate_class (reg);
  if (reg_class_subset_p (rclass, qty[qtyno].alternate_class))
    qty[qtyno].alternate_class = rclass;
}
