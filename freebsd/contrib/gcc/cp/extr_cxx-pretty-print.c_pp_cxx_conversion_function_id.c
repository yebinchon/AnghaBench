
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;


 int TREE_TYPE (int ) ;
 int pp_cxx_identifier (int *,char*) ;
 int pp_cxx_type_specifier_seq (int *,int ) ;

__attribute__((used)) static inline void
pp_cxx_conversion_function_id (cxx_pretty_printer *pp, tree t)
{
  pp_cxx_identifier (pp, "operator");
  pp_cxx_type_specifier_seq (pp, TREE_TYPE (t));
}
