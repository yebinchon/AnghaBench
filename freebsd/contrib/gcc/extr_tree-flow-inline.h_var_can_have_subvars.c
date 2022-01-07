
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ AGGREGATE_TYPE_P (int ) ;
 scalar_t__ COMPLEX_TYPE ;
 int DECL_COMPLEX_GIMPLE_REG_P (int ) ;
 int DECL_P (int ) ;
 scalar_t__ MTAG_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_THIS_VOLATILE (int ) ;
 int TREE_TYPE (int ) ;

__attribute__((used)) static inline bool
var_can_have_subvars (tree v)
{

  if (TREE_THIS_VOLATILE (v))
    return 0;


  if (!DECL_P (v) || MTAG_P (v))
    return 0;


  if (AGGREGATE_TYPE_P (TREE_TYPE (v)))
    return 1;



  if (TREE_CODE (TREE_TYPE (v)) == COMPLEX_TYPE
      && !DECL_COMPLEX_GIMPLE_REG_P (v))
    return 1;

  return 0;
}
