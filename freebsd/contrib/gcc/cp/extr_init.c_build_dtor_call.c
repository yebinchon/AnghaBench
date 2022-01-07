
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int special_function_kind ;


 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 int base_dtor_identifier ;
 int build_new_method_call (int ,int ,int ,int ,int,int *) ;
 int complete_dtor_identifier ;
 int deleting_dtor_identifier ;
 int gcc_unreachable () ;
 int lookup_fnfields (int ,int ,int) ;




__attribute__((used)) static tree
build_dtor_call (tree exp, special_function_kind dtor_kind, int flags)
{
  tree name;
  tree fn;
  switch (dtor_kind)
    {
    case 129:
      name = complete_dtor_identifier;
      break;

    case 130:
      name = base_dtor_identifier;
      break;

    case 128:
      name = deleting_dtor_identifier;
      break;

    default:
      gcc_unreachable ();
    }
  fn = lookup_fnfields (TREE_TYPE (exp), name, 2);
  return build_new_method_call (exp, fn,
             NULL_TREE,
                        NULL_TREE,
    flags,
             ((void*)0));
}
