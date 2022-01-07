
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_EXTERNAL (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_STATIC (int ) ;
 scalar_t__ VAR_DECL ;

__attribute__((used)) static bool
fixed_address_object_p (tree obj)
{
  return (TREE_CODE (obj) == VAR_DECL
   && (TREE_STATIC (obj)
       || DECL_EXTERNAL (obj)));
}
