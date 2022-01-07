
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int COMPARE_STRICT ;
 int comptypes (int ,int ,int ) ;

__attribute__((used)) static bool
types_are_block_compatible (tree t1, tree t2)
{
  return comptypes (t1, t2, COMPARE_STRICT);
}
