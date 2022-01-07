
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct ivopts_data {int dummy; } ;
struct TYPE_3__ {int (* type_for_size ) (unsigned int,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;


 int add_candidate (struct ivopts_data*,int ,int ,int,int *) ;
 int build_int_cst (int ,int) ;
 TYPE_2__ lang_hooks ;
 int stub1 (unsigned int,int) ;

__attribute__((used)) static void
add_standard_iv_candidates_for_size (struct ivopts_data *data,
         unsigned int size)
{
  tree type = lang_hooks.types.type_for_size (size, 1);
  add_candidate (data, build_int_cst (type, 0), build_int_cst (type, 1),
   1, ((void*)0));
}
