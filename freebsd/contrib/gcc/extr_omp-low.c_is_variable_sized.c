
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_CONSTANT (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_SIZE_UNIT (int ) ;

__attribute__((used)) static inline bool
is_variable_sized (tree expr)
{
  return !TREE_CONSTANT (TYPE_SIZE_UNIT (TREE_TYPE (expr)));
}
