
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ var_ann_t ;
typedef int tree ;


 scalar_t__ create_var_ann (int ) ;
 scalar_t__ var_ann (int ) ;

__attribute__((used)) static inline var_ann_t
get_var_ann (tree var)
{
  var_ann_t ann = var_ann (var);
  return (ann) ? ann : create_var_ann (var);
}
