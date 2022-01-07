
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ia64_opcode {int dummy; } ;


 struct ia64_opcode* ia64_find_next_opcode (struct ia64_opcode*) ;
 int ia64_free_opcode (struct ia64_opcode*) ;

__attribute__((used)) static struct ia64_opcode *
get_next_opcode (struct ia64_opcode *idesc)
{
  struct ia64_opcode *next = ia64_find_next_opcode (idesc);
  ia64_free_opcode (idesc);
  return next;
}
