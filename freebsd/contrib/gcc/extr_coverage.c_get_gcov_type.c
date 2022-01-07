
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int (* type_for_size ) (int ,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;


 int GCOV_TYPE_SIZE ;
 TYPE_2__ lang_hooks ;
 int stub1 (int ,int) ;

tree
get_gcov_type (void)
{
  return lang_hooks.types.type_for_size (GCOV_TYPE_SIZE, 0);
}
