
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CONST_DECL ;
 int DECL_ATTRIBUTES (scalar_t__) ;
 scalar_t__ DECL_INITIAL (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ lookup_attribute (char*,int ) ;

__attribute__((used)) static bool
use_blocks_for_decl_p (tree decl)
{

  if (TREE_CODE (decl) != VAR_DECL && TREE_CODE (decl) != CONST_DECL)
    return 0;





  if (DECL_INITIAL (decl) == decl)
    return 0;


  if (lookup_attribute ("alias", DECL_ATTRIBUTES (decl)))
    return 0;

  return 1;
}
