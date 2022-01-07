
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPC_OPCODE_ANY ;
 int PPC_OPCODE_POWER4 ;

__attribute__((used)) static int
valid_bo (long value, int dialect, int extract)
{
  if ((dialect & PPC_OPCODE_POWER4) == 0)
    {
      int valid;
      switch (value & 0x14)
 {
 default:
 case 0:
   valid = 1;
   break;
 case 0x4:
   valid = (value & 0x2) == 0;
   break;
 case 0x10:
   valid = (value & 0x8) == 0;
   break;
 case 0x14:
   valid = value == 0x14;
   break;
 }

      if (valid
   || (dialect & PPC_OPCODE_ANY) == 0
   || !extract)
 return valid;
    }
  if ((value & 0x14) == 0)
    return (value & 0x1) == 0;
  else if ((value & 0x14) == 0x14)
    return value == 0x14;
  else
    return 1;
}
