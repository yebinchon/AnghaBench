
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* ipa_reference_local_vars_info_t ;
typedef int * bitmap ;
struct TYPE_3__ {int * statics_written; } ;


 TYPE_1__* get_local_reference_vars_info (int ) ;

bitmap
ipa_reference_get_written_local (tree fn)
{
  ipa_reference_local_vars_info_t l = get_local_reference_vars_info (fn);
  if (l)
    return l->statics_written;
  else
    return ((void*)0);
}
