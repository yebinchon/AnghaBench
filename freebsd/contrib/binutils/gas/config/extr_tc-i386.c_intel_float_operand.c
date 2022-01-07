
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
intel_float_operand (const char *mnemonic)
{




  if (mnemonic[0] != 'f')
    return 0;

  switch (mnemonic[1])
    {



    case 'i':
      return 2 ;
    case 'l':
      if (mnemonic[2] == 'd' && (mnemonic[3] == 'c' || mnemonic[3] == 'e'))
 return 3;
      break;
    case 'n':
      if (mnemonic[2] != 'o' )
 return 3;
      break;
    case 'r':
      if (mnemonic[2] == 's')
 return 3;
      break;
    case 's':
      if (mnemonic[2] == 'a')
 return 3;
      if (mnemonic[2] == 't')
 {
   switch (mnemonic[3])
     {
     case 'c':
     case 'd':
     case 'e':
     case 's':
       return 3;
     }
 }
      break;
    case 'x':
      if (mnemonic[2] == 'r' || mnemonic[2] == 's')
 return 0;
      break;
    }

  return 1;
}
