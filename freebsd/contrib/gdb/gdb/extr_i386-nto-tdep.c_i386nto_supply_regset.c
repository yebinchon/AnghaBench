
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i386nto_supply_fpregset (char*) ;
 int i386nto_supply_gregset (char*) ;

__attribute__((used)) static void
i386nto_supply_regset (int regset, char *data)
{
  switch (regset)
    {
    case 128:
      i386nto_supply_gregset (data);
      break;
    case 129:
      i386nto_supply_fpregset (data);
      break;
    }
}
