
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 scalar_t__ STRING_CST ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_STRING_LENGTH (int ) ;
 int TREE_TYPE (int ) ;
 int build_int_cst (int ,int ) ;
 int mf_build_string (char*) ;
 scalar_t__ mf_marked_p (int ) ;
 int mudflap_register_call (int ,int ,int ) ;
 int size_in_bytes (int ) ;

void
mudflap_enqueue_constant (tree obj)
{
  tree object_size, varname;

  if (mf_marked_p (obj))
    return;

  if (TREE_CODE (obj) == STRING_CST)
    object_size = build_int_cst (NULL_TREE, TREE_STRING_LENGTH (obj));
  else
    object_size = size_in_bytes (TREE_TYPE (obj));

  if (TREE_CODE (obj) == STRING_CST)
    varname = mf_build_string ("string literal");
  else
    varname = mf_build_string ("constant");

  mudflap_register_call (obj, object_size, varname);
}
