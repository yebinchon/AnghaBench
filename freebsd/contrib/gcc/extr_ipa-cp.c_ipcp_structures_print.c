
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ipa_method_modify_print (int *) ;
 int ipa_method_tree_print (int *) ;
 int ipcp_callsite_param_print (int *) ;
 int ipcp_method_cval_print (int *) ;
 int ipcp_method_scale_print (int *) ;

__attribute__((used)) static void
ipcp_structures_print (FILE * f)
{
  ipcp_method_cval_print (f);
  ipcp_method_scale_print (f);
  ipa_method_tree_print (f);
  ipa_method_modify_print (f);
  ipcp_callsite_param_print (f);
}
