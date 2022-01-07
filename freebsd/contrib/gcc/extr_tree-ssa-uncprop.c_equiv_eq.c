
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct equiv_hash_elt {int value; } ;


 int operand_equal_p (int ,int ,int ) ;

__attribute__((used)) static int
equiv_eq (const void *p1, const void *p2)
{
  tree value1 = ((struct equiv_hash_elt *)p1)->value;
  tree value2 = ((struct equiv_hash_elt *)p2)->value;

  return operand_equal_p (value1, value2, 0);
}
