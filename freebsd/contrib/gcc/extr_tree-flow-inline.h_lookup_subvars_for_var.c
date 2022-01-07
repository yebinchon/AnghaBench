
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* var_ann_t ;
typedef int tree ;
typedef int subvar_t ;
struct TYPE_4__ {int subvars; } ;


 int gcc_assert (TYPE_1__*) ;
 TYPE_1__* var_ann (int ) ;

__attribute__((used)) static inline subvar_t *
lookup_subvars_for_var (tree var)
{
  var_ann_t ann = var_ann (var);
  gcc_assert (ann);
  return &ann->subvars;
}
