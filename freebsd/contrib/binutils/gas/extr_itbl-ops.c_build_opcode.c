
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itbl_entry {int processor; int range; int value; } ;


 unsigned long ITBL_ENCODE_PNUM (int ) ;
 unsigned long apply_range (int ,int ) ;

__attribute__((used)) static unsigned long
build_opcode (struct itbl_entry *e)
{
  unsigned long opcode;

  opcode = apply_range (e->value, e->range);
  opcode |= ITBL_ENCODE_PNUM (e->processor);
  return opcode;
}
