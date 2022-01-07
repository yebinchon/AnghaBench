
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ COMPLETE_TYPE_P (int ) ;
 int TREE_ADDRESSABLE (int ) ;
 int create_tmp_var_raw (int ,char const*) ;
 int gcc_assert (int) ;
 int gimple_add_tmp_var (int ) ;

tree
create_tmp_var (tree type, const char *prefix)
{
  tree tmp_var;







  gcc_assert (!TREE_ADDRESSABLE (type) && COMPLETE_TYPE_P (type));

  tmp_var = create_tmp_var_raw (type, prefix);
  gimple_add_tmp_var (tmp_var);
  return tmp_var;
}
