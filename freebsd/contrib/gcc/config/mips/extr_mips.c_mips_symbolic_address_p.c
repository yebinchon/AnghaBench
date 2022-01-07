
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mips_symbol_type { ____Placeholder_mips_symbol_type } mips_symbol_type ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE_SIZE (int) ;
 int TARGET_MIPS16 ;
 int gcc_unreachable () ;

__attribute__((used)) static bool
mips_symbolic_address_p (enum mips_symbol_type symbol_type,
    enum machine_mode mode)
{
  switch (symbol_type)
    {
    case 140:
      return !TARGET_MIPS16;

    case 132:
      return 1;

    case 142:

      return GET_MODE_SIZE (mode) == 4 || GET_MODE_SIZE (mode) == 8;

    case 133:
      return 1;

    case 134:

      return 0;

    case 136:
    case 138:
    case 139:
    case 137:
    case 131:
    case 130:
    case 129:
    case 141:
    case 135:
    case 128:
    case 145:
    case 143:
    case 144:
      return 1;
    }
  gcc_unreachable ();
}
