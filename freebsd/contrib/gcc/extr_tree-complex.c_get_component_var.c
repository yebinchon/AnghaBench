
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 int DECL_UID (int *) ;
 int IMAGPART_EXPR ;
 int REALPART_EXPR ;
 int * TREE_TYPE (int *) ;
 int * create_one_component_var (int *,int *,char*,char*,int ) ;
 int cvc_insert (size_t,int *) ;
 int * cvc_lookup (size_t) ;

__attribute__((used)) static tree
get_component_var (tree var, bool imag_p)
{
  size_t decl_index = DECL_UID (var) * 2 + imag_p;
  tree ret = cvc_lookup (decl_index);

  if (ret == ((void*)0))
    {
      ret = create_one_component_var (TREE_TYPE (TREE_TYPE (var)), var,
          imag_p ? "CI" : "CR",
          imag_p ? "$imag" : "$real",
          imag_p ? IMAGPART_EXPR : REALPART_EXPR);
      cvc_insert (decl_index, ret);
    }

  return ret;
}
