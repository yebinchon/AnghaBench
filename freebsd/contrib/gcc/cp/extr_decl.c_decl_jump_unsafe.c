
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_NONTRIVIALLY_INITIALIZED_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_STATIC (int ) ;
 scalar_t__ TREE_TYPE (int ) ;
 scalar_t__ TYPE_NEEDS_CONSTRUCTING (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ error_mark_node ;
 scalar_t__ pod_type_p (scalar_t__) ;

__attribute__((used)) static int
decl_jump_unsafe (tree decl)
{
  if (TREE_CODE (decl) != VAR_DECL || TREE_STATIC (decl)
      || TREE_TYPE (decl) == error_mark_node)
    return 0;

  if (TYPE_NEEDS_CONSTRUCTING (TREE_TYPE (decl))
      || DECL_NONTRIVIALLY_INITIALIZED_P (decl))
    return 2;

  if (pod_type_p (TREE_TYPE (decl)))
    return 0;



  return 1;
}
