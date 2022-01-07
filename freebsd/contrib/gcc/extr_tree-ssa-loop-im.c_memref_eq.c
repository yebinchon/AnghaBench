
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct mem_ref {int mem; } ;


 int operand_equal_p (int ,int ,int ) ;

__attribute__((used)) static int
memref_eq (const void *obj1, const void *obj2)
{
  const struct mem_ref *mem1 = obj1;

  return operand_equal_p (mem1->mem, (tree) obj2, 0);
}
