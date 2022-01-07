
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_BY_REFERENCE (int ) ;
 scalar_t__ PARM_DECL ;
 scalar_t__ RESULT_DECL ;
 scalar_t__ TREE_CODE (int ) ;

__attribute__((used)) static inline bool
is_invisiref_parm (tree t)
{
  return ((TREE_CODE (t) == PARM_DECL || TREE_CODE (t) == RESULT_DECL)
   && DECL_BY_REFERENCE (t));
}
