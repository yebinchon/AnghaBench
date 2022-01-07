
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_HAS_CONSTRUCTOR (int ) ;
 scalar_t__ TYPE_NEEDS_CONSTRUCTING (int ) ;
 scalar_t__ block_requires_copying (int ) ;

__attribute__((used)) static bool
cp_block_requires_copying (tree exp)
{
  return (block_requires_copying (exp)
  || TYPE_HAS_CONSTRUCTOR (TREE_TYPE (exp))
  || TYPE_NEEDS_CONSTRUCTING (TREE_TYPE (exp)));
}
