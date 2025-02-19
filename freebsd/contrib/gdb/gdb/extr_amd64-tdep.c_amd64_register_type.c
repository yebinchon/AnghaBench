
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct gdbarch {int dummy; } ;
struct TYPE_2__ {struct type** type; } ;


 int AMD64_NUM_REGS ;
 TYPE_1__* amd64_register_info ;
 int gdb_assert (int) ;

__attribute__((used)) static struct type *
amd64_register_type (struct gdbarch *gdbarch, int regnum)
{
  gdb_assert (regnum >= 0 && regnum < AMD64_NUM_REGS);

  return *amd64_register_info[regnum].type;
}
