
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtat_class; int dtat_data; int dtat_name; } ;
typedef TYPE_1__ dtrace_attribute_t ;
typedef int dof_attr_t ;


 int DOF_ATTR (int ,int ,int ) ;

__attribute__((used)) static dof_attr_t
dof_attr(const dtrace_attribute_t *ap)
{
 return (DOF_ATTR(ap->dtat_name, ap->dtat_data, ap->dtat_class));
}
