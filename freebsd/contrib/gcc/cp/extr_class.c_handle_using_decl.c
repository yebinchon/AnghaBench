
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int DECL_ARTIFICIAL (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ DECL_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_NEXT (scalar_t__) ;
 scalar_t__ TREE_PRIVATE (scalar_t__) ;
 scalar_t__ TREE_PROTECTED (scalar_t__) ;
 scalar_t__ USING_DECL_DECLS (scalar_t__) ;
 int USING_DECL_SCOPE (scalar_t__) ;
 scalar_t__ access_private_node ;
 scalar_t__ access_protected_node ;
 scalar_t__ access_public_node ;
 int add_method (scalar_t__,scalar_t__,scalar_t__) ;
 int alter_access (scalar_t__,scalar_t__,scalar_t__) ;
 int cp_emit_debug_info_for_using (scalar_t__,int ) ;
 int error (char*,scalar_t__,...) ;
 int gcc_assert (int) ;
 scalar_t__ is_overloaded_fn (scalar_t__) ;
 scalar_t__ lookup_member (scalar_t__,scalar_t__,int ,int) ;
 int processing_template_decl ;

__attribute__((used)) static void
handle_using_decl (tree using_decl, tree t)
{
  tree decl = USING_DECL_DECLS (using_decl);
  tree name = DECL_NAME (using_decl);
  tree access
    = TREE_PRIVATE (using_decl) ? access_private_node
    : TREE_PROTECTED (using_decl) ? access_protected_node
    : access_public_node;
  tree flist = NULL_TREE;
  tree old_value;

  gcc_assert (!processing_template_decl && decl);

  old_value = lookup_member (t, name, 0, 0);
  if (old_value)
    {
      if (is_overloaded_fn (old_value))
 old_value = OVL_CURRENT (old_value);

      if (DECL_P (old_value) && DECL_CONTEXT (old_value) == t)
         ;
      else
 old_value = NULL_TREE;
    }

  cp_emit_debug_info_for_using (decl, USING_DECL_SCOPE (using_decl));

  if (is_overloaded_fn (decl))
    flist = decl;

  if (! old_value)
    ;
  else if (is_overloaded_fn (old_value))
    {
      if (flist)

                                                           ;
      else
 {
   error ("%q+D invalid in %q#T", using_decl, t);
   error ("  because of local method %q+#D with same name",
   OVL_CURRENT (old_value));
   return;
 }
    }
  else if (!DECL_ARTIFICIAL (old_value))
    {
      error ("%q+D invalid in %q#T", using_decl, t);
      error ("  because of local member %q+#D with same name", old_value);
      return;
    }


  if (flist)
    for (; flist; flist = OVL_NEXT (flist))
      {
 add_method (t, OVL_CURRENT (flist), using_decl);
 alter_access (t, OVL_CURRENT (flist), access);
      }
  else
    alter_access (t, decl, access);
}
