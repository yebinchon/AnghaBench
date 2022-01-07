
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * tree ;
struct pointer_set_t {int dummy; } ;
struct cxx_int_tree_map {int * to; int uid; } ;
struct TYPE_2__ {scalar_t__ extern_decl_map; } ;


 scalar_t__ ADDR_EXPR ;
 int CLEANUP_BODY (int *) ;
 scalar_t__ CLEANUP_EH_ONLY (int *) ;
 int CLEANUP_EXPR (int *) ;
 scalar_t__ CLEANUP_STMT ;
 scalar_t__ DECL_EXTERNAL (int *) ;
 scalar_t__ DECL_THUNK_P (int ) ;
 int DECL_UID (int *) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ IS_TYPE_OR_DECL_P (int *) ;
 int * NULL_TREE ;
 scalar_t__ OMP_CLAUSE ;
 int OMP_CLAUSE_CODE (int *) ;


 int * OMP_CLAUSE_DECL (int *) ;





 scalar_t__ PARM_DECL ;
 scalar_t__ RETURN_EXPR ;
 scalar_t__ TREE_CODE (int *) ;
 int * TREE_OPERAND (int *,int ) ;
 int TREE_TYPE (int *) ;
 int TRY_CATCH_EXPR ;
 int TRY_FINALLY_EXPR ;
 scalar_t__ VAR_DECL ;
 int * build2 (int ,int ,int ,int ) ;
 int * convert (int ,int *) ;
 int * convert_from_reference (int *) ;
 TYPE_1__* cp_function_chain ;
 int current_function_decl ;
 int gcc_assert (int) ;
 scalar_t__ htab_find_with_hash (scalar_t__,struct cxx_int_tree_map*,int ) ;
 scalar_t__ is_invisiref_parm (int *) ;
 scalar_t__ pointer_set_contains (struct pointer_set_t*,int *) ;
 int pointer_set_insert (struct pointer_set_t*,int *) ;
 int void_type_node ;

__attribute__((used)) static tree
cp_genericize_r (tree *stmt_p, int *walk_subtrees, void *data)
{
  tree stmt = *stmt_p;
  struct pointer_set_t *p_set = (struct pointer_set_t*) data;

  if (is_invisiref_parm (stmt)

      && !(DECL_THUNK_P (current_function_decl)
    && TREE_CODE (stmt) == PARM_DECL))
    {
      *stmt_p = convert_from_reference (stmt);
      *walk_subtrees = 0;
      return ((void*)0);
    }



  if (cp_function_chain->extern_decl_map
      && (TREE_CODE (stmt) == FUNCTION_DECL || TREE_CODE (stmt) == VAR_DECL)
      && DECL_EXTERNAL (stmt))
    {
      struct cxx_int_tree_map *h, in;
      in.uid = DECL_UID (stmt);
      h = (struct cxx_int_tree_map *)
   htab_find_with_hash (cp_function_chain->extern_decl_map,
          &in, in.uid);
      if (h)
 {
   *stmt_p = h->to;
   *walk_subtrees = 0;
   return ((void*)0);
 }
    }


  if (pointer_set_contains (p_set, stmt))
    {
      *walk_subtrees = 0;
      return NULL_TREE;
    }

  if (TREE_CODE (stmt) == ADDR_EXPR
      && is_invisiref_parm (TREE_OPERAND (stmt, 0)))
    {
      *stmt_p = convert (TREE_TYPE (stmt), TREE_OPERAND (stmt, 0));
      *walk_subtrees = 0;
    }
  else if (TREE_CODE (stmt) == RETURN_EXPR
    && TREE_OPERAND (stmt, 0)
    && is_invisiref_parm (TREE_OPERAND (stmt, 0)))

    *walk_subtrees = 0;
  else if (TREE_CODE (stmt) == OMP_CLAUSE)
    switch (OMP_CLAUSE_CODE (stmt))
      {
      case 130:
      case 128:
      case 132:
      case 131:
      case 134:
      case 133:

 if (is_invisiref_parm (OMP_CLAUSE_DECL (stmt)))
   *walk_subtrees = 0;
 break;
      case 129:
 gcc_assert (!is_invisiref_parm (OMP_CLAUSE_DECL (stmt)));
 break;
      default:
 break;
      }
  else if (IS_TYPE_OR_DECL_P (stmt))
    *walk_subtrees = 0;




  else if (TREE_CODE (stmt) == CLEANUP_STMT)
    *stmt_p = build2 (CLEANUP_EH_ONLY (stmt) ? TRY_CATCH_EXPR
          : TRY_FINALLY_EXPR,
        void_type_node,
        CLEANUP_BODY (stmt),
        CLEANUP_EXPR (stmt));

  pointer_set_insert (p_set, *stmt_p);

  return ((void*)0);
}
