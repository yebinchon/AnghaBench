
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_UID (int ) ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_VAR (int ) ;
 scalar_t__ TREE_CODE (int ) ;

__attribute__((used)) static inline unsigned
get_name_decl (tree t)
{
  if (TREE_CODE (t) != SSA_NAME)
    return DECL_UID (t);
  else
    return DECL_UID (SSA_NAME_VAR (t));
}
