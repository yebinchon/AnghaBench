
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int DECL_NAME (scalar_t__) ;
 int DECL_P (scalar_t__) ;
 int DECL_TEMPLATE_PARM_P (scalar_t__) ;
 scalar_t__ OVERLOAD ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ TEMPLATE_PARMS_FOR_INLINE (int ) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int current_template_parms ;
 int error (char*,scalar_t__) ;
 scalar_t__ innermost_non_namespace_value (int ) ;

void
check_template_shadow (tree decl)
{
  tree olddecl;



  if (!current_template_parms)
    return;


  if (TREE_CODE (decl) == OVERLOAD)
    decl = OVL_CURRENT (decl);
  olddecl = innermost_non_namespace_value (DECL_NAME (decl));



  if (!olddecl)
    return;





  if (!DECL_P (olddecl) || !DECL_TEMPLATE_PARM_P (olddecl))
    return;




  if (decl == olddecl
      || TEMPLATE_PARMS_FOR_INLINE (current_template_parms))
    return;

  error ("declaration of %q+#D", decl);
  error (" shadows template parm %q+#D", olddecl);
}
