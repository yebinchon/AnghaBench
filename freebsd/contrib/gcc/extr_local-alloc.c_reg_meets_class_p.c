
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reg_class { ____Placeholder_reg_class } reg_class ;


 scalar_t__ reg_class_subset_p (int,int) ;
 int reg_preferred_class (int) ;

__attribute__((used)) static int
reg_meets_class_p (int reg, enum reg_class class)
{
  enum reg_class rclass = reg_preferred_class (reg);
  return (reg_class_subset_p (rclass, class)
   || reg_class_subset_p (class, rclass));
}
