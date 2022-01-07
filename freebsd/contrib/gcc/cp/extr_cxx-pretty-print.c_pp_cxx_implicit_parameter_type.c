
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_ARG_TYPES (int ) ;

__attribute__((used)) static inline tree
pp_cxx_implicit_parameter_type (tree mf)
{
  return TREE_TYPE (TREE_VALUE (TYPE_ARG_TYPES (TREE_TYPE (mf))));
}
