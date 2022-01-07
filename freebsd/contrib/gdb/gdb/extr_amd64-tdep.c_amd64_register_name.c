
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 int AMD64_NUM_REGS ;
 TYPE_1__* amd64_register_info ;

__attribute__((used)) static const char *
amd64_register_name (int regnum)
{
  if (regnum >= 0 && regnum < AMD64_NUM_REGS)
    return amd64_register_info[regnum].name;

  return ((void*)0);
}
