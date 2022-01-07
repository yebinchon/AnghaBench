
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arc_opcode {int flags; } ;


 scalar_t__ ARC_OPCODE_CPU (int ) ;
 scalar_t__ cpu_type ;

int
arc_opcode_supported (const struct arc_opcode *opcode)
{
  if (ARC_OPCODE_CPU (opcode->flags) <= cpu_type)
    return 1;
  return 0;
}
