
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* tree ;
struct TYPE_2__ {void* x_current_class_ref; void* x_current_class_ptr; } ;


 int DECL_TI_ARGS (void*) ;
 void* NULL_TREE ;
 scalar_t__ cfun ;
 void* check_default_argument (void*,void*) ;
 TYPE_1__* cp_function_chain ;
 void* current_class_ptr ;
 void* current_class_ref ;
 int dk_no_deferred ;
 int function_depth ;
 int pop_access_scope (void*) ;
 int pop_deferring_access_checks () ;
 int push_access_scope (void*) ;
 int push_deferring_access_checks (int ) ;
 int tf_warning_or_error ;
 void* tsubst_expr (void*,int ,int ,void*,int) ;

tree
tsubst_default_argument (tree fn, tree type, tree arg)
{
  tree saved_class_ptr = NULL_TREE;
  tree saved_class_ref = NULL_TREE;
  push_access_scope (fn);

  if (cfun)
    {
      saved_class_ptr = current_class_ptr;
      cp_function_chain->x_current_class_ptr = NULL_TREE;
      saved_class_ref = current_class_ref;
      cp_function_chain->x_current_class_ref = NULL_TREE;
    }

  push_deferring_access_checks(dk_no_deferred);





  ++function_depth;
  arg = tsubst_expr (arg, DECL_TI_ARGS (fn),
       tf_warning_or_error, NULL_TREE,
                                          0);
  --function_depth;
  pop_deferring_access_checks();


  if (cfun)
    {
      cp_function_chain->x_current_class_ptr = saved_class_ptr;
      cp_function_chain->x_current_class_ref = saved_class_ref;
    }

  pop_access_scope (fn);


  arg = check_default_argument (type, arg);

  return arg;
}
