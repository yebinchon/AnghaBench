
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ PARM_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;

__attribute__((used)) static int
warning_candidate_p (tree x)
{
  return TREE_CODE (x) == VAR_DECL || TREE_CODE (x) == PARM_DECL;
}
