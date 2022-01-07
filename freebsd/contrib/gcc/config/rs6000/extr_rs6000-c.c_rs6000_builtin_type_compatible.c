
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int (* types_compatible_p ) (int ,int ) ;} ;


 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 TYPE_1__ lang_hooks ;
 int rs6000_builtin_type (int) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static inline bool
rs6000_builtin_type_compatible (tree t, int id)
{
  tree builtin_type;
  builtin_type = rs6000_builtin_type (id);
  if (INTEGRAL_TYPE_P (t) && INTEGRAL_TYPE_P (builtin_type))
    return 1;
  else
    return lang_hooks.types_compatible_p (t, builtin_type);
}
