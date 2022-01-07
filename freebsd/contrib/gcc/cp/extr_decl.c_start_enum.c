
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ TYPE_VALUES ;


 scalar_t__ ENUMERAL_TYPE ;
 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_DECL (scalar_t__) ;
 int enum_type ;
 int error (char*,scalar_t__) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 scalar_t__ lookup_and_check_tag (int ,scalar_t__,int ,int) ;
 scalar_t__ make_anon_name () ;
 scalar_t__ make_node (scalar_t__) ;
 scalar_t__ pushtag (scalar_t__,scalar_t__,int ) ;
 int ts_current ;

tree
start_enum (tree name)
{
  tree enumtype;

  gcc_assert (TREE_CODE (name) == IDENTIFIER_NODE);





  enumtype = lookup_and_check_tag (enum_type, name,
                     ts_current,
                             0);

  if (enumtype != NULL_TREE && TREE_CODE (enumtype) == ENUMERAL_TYPE)
    {
      error ("multiple definition of %q#T", enumtype);
      error ("%Jprevious definition here", TYPE_MAIN_DECL (enumtype));

      TYPE_VALUES (enumtype) = NULL_TREE;
    }
  else
    {


      if (enumtype == error_mark_node)
 name = make_anon_name ();

      enumtype = make_node (ENUMERAL_TYPE);
      enumtype = pushtag (name, enumtype, ts_current);
    }

  return enumtype;
}
