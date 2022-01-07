
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int AGGREGATE_TYPE_P (int ) ;
 int * DECL_SIZE (int ) ;
 scalar_t__ PARM_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_CONSTANT (int *) ;
 int TREE_TYPE (int ) ;

__attribute__((used)) static bool
use_pointer_in_frame (tree decl)
{
  if (TREE_CODE (decl) == PARM_DECL)
    {



      return AGGREGATE_TYPE_P (TREE_TYPE (decl));
    }
  else
    {

      return DECL_SIZE (decl) == ((void*)0) || !TREE_CONSTANT (DECL_SIZE (decl));
    }
}
