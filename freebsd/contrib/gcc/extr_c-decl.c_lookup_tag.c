
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct c_binding {int decl; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ B_IN_CURRENT_SCOPE (struct c_binding*) ;
 scalar_t__ B_IN_EXTERNAL_SCOPE (struct c_binding*) ;
 struct c_binding* I_TAG_BINDING (int ) ;
 int TREE_CODE (int ) ;
 scalar_t__ current_scope ;
 scalar_t__ file_scope ;
 int input_location ;
 int pending_invalid_xref ;
 int pending_invalid_xref_location ;
 int pending_xref_error () ;

__attribute__((used)) static tree
lookup_tag (enum tree_code code, tree name, int thislevel_only)
{
  struct c_binding *b = I_TAG_BINDING (name);
  int thislevel = 0;

  if (!b || !b->decl)
    return 0;



  if (thislevel_only || TREE_CODE (b->decl) != code)
    {




      if (B_IN_CURRENT_SCOPE (b)
   || (current_scope == file_scope && B_IN_EXTERNAL_SCOPE (b)))
 thislevel = 1;
    }

  if (thislevel_only && !thislevel)
    return 0;

  if (TREE_CODE (b->decl) != code)
    {

      pending_invalid_xref = name;
      pending_invalid_xref_location = input_location;





      if (thislevel)
 pending_xref_error ();
    }
  return b->decl;
}
