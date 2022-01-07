
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ia64_opcode {scalar_t__ ent_index; int name; } ;


 struct ia64_opcode* ia64_find_matching_opcode (int ,scalar_t__) ;

struct ia64_opcode *
ia64_find_next_opcode (struct ia64_opcode *prev_ent)
{
  return ia64_find_matching_opcode (prev_ent->name,
        prev_ent->ent_index + 1);
}
