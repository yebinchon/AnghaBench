
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* ipa_reference_global_vars_info_t ;
typedef int * bitmap ;
struct TYPE_3__ {int * statics_not_written; } ;


 TYPE_1__* get_global_reference_vars_info (int ) ;

bitmap
ipa_reference_get_not_written_global (tree fn)
{
  ipa_reference_global_vars_info_t g = get_global_reference_vars_info (fn);
  if (g)
    return g->statics_not_written;
  else
    return ((void*)0);
}
