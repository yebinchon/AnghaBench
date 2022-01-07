
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;
struct lookup_field_info {char* type; char* name; int want_type; char* rval; char* rval_binfo; char* errstr; char* ambiguous; } ;
typedef int lfi ;


 char* BINFO_TYPE (char*) ;
 scalar_t__ DECL_NONSTATIC_MEMBER_FUNCTION_P (char*) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ IDENTIFIER_TYPENAME_P (char*) ;
 int IS_AGGR_TYPE_CODE (scalar_t__) ;
 char* NULL_TREE ;
 scalar_t__ TREE_BINFO ;
 scalar_t__ TREE_CODE (char*) ;
 char* TREE_TYPE (char*) ;
 char* TYPE_BINFO (char*) ;
 char* build_baselink (char*,char*,char*,char*) ;
 char* complete_type (char*) ;
 int dfs_walk_all (char*,int *,int *,struct lookup_field_info*) ;
 int error (char const*,char*,char*) ;
 char* error_mark_node ;
 int gcc_assert (int) ;
 scalar_t__ is_overloaded_fn (char*) ;
 int lookup_field_r ;
 int memset (struct lookup_field_info*,int ,int) ;
 int n_calls_lookup_field ;
 int perform_or_defer_access_check (char*,char*,char*) ;
 int print_candidates (char*) ;
 int really_overloaded_fn (char*) ;

tree
lookup_member (tree xbasetype, tree name, int protect, bool want_type)
{
  tree rval, rval_binfo = NULL_TREE;
  tree type = NULL_TREE, basetype_path = NULL_TREE;
  struct lookup_field_info lfi;
  const char *errstr = 0;

  gcc_assert (TREE_CODE (name) == IDENTIFIER_NODE);

  if (TREE_CODE (xbasetype) == TREE_BINFO)
    {
      type = BINFO_TYPE (xbasetype);
      basetype_path = xbasetype;
    }
  else
    {
      if (!IS_AGGR_TYPE_CODE (TREE_CODE (xbasetype)))
 return NULL_TREE;
      type = xbasetype;
      xbasetype = NULL_TREE;
    }

  type = complete_type (type);
  if (!basetype_path)
    basetype_path = TYPE_BINFO (type);

  if (!basetype_path)
    return NULL_TREE;





  memset (&lfi, 0, sizeof (lfi));
  lfi.type = type;
  lfi.name = name;
  lfi.want_type = want_type;
  dfs_walk_all (basetype_path, &lookup_field_r, ((void*)0), &lfi);
  rval = lfi.rval;
  rval_binfo = lfi.rval_binfo;
  if (rval_binfo)
    type = BINFO_TYPE (rval_binfo);
  errstr = lfi.errstr;



  if (!protect && lfi.ambiguous)
    return NULL_TREE;

  if (protect == 2)
    {
      if (lfi.ambiguous)
 return lfi.ambiguous;
      else
 protect = 0;
    }
  if (rval && protect
      && !really_overloaded_fn (rval)
      && !(TREE_CODE (rval) == FUNCTION_DECL
    && DECL_NONSTATIC_MEMBER_FUNCTION_P (rval)))
    perform_or_defer_access_check (basetype_path, rval, rval);

  if (errstr && protect)
    {
      error (errstr, name, type);
      if (lfi.ambiguous)
 print_candidates (lfi.ambiguous);
      rval = error_mark_node;
    }

  if (rval && is_overloaded_fn (rval))
    rval = build_baselink (rval_binfo, basetype_path, rval,
      (IDENTIFIER_TYPENAME_P (name)
      ? TREE_TYPE (name): NULL_TREE));
  return rval;
}
