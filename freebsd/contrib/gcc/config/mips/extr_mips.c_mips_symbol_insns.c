
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mips_symbol_type { ____Placeholder_mips_symbol_type } mips_symbol_type ;


 int ABI_HAS_64BIT_SYMBOLS ;
 int TARGET_MIPS16 ;
 int gcc_unreachable () ;
 int * mips_split_p ;

__attribute__((used)) static int
mips_symbol_insns (enum mips_symbol_type type)
{
  switch (type)
    {
    case 140:


      if (TARGET_MIPS16)
 return 0;
      return (ABI_HAS_64BIT_SYMBOLS ? 6 : 2);

    case 132:
      return 1;

    case 142:


      return 2;

    case 133:
    case 134:
      return 3;

    case 136:
    case 138:
    case 139:
    case 137:
    case 145:
    case 143:
    case 144:
    case 130:
    case 129:
    case 141:
    case 135:
    case 128:

      return mips_split_p[type] ? 2 : 1;

    case 131:

      return 0;
    }
  gcc_unreachable ();
}
