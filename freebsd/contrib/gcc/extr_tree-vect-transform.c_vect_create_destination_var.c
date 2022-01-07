
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum vect_var_kind { ____Placeholder_vect_var_kind } vect_var_kind ;


 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int add_referenced_var (scalar_t__) ;
 int gcc_assert (int) ;
 char* get_name (scalar_t__) ;
 scalar_t__ vect_get_new_vect_var (scalar_t__,int,char const*) ;
 int vect_scalar_var ;
 int vect_simple_var ;

__attribute__((used)) static tree
vect_create_destination_var (tree scalar_dest, tree vectype)
{
  tree vec_dest;
  const char *new_name;
  tree type;
  enum vect_var_kind kind;

  kind = vectype ? vect_simple_var : vect_scalar_var;
  type = vectype ? vectype : TREE_TYPE (scalar_dest);

  gcc_assert (TREE_CODE (scalar_dest) == SSA_NAME);

  new_name = get_name (scalar_dest);
  if (!new_name)
    new_name = "var_";
  vec_dest = vect_get_new_vect_var (type, vect_simple_var, new_name);
  add_referenced_var (vec_dest);

  return vec_dest;
}
