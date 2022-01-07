
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int histogram_values ;


 scalar_t__ flag_value_profile_transformations ;
 int tree_divmod_values_to_profile (int ,int *) ;

__attribute__((used)) static void
tree_values_to_profile (tree stmt, histogram_values *values)
{
  if (flag_value_profile_transformations)
    tree_divmod_values_to_profile (stmt, values);
}
