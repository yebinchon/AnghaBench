
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static
int get_DW_EH_PE_width (int encoding, int ptr_size)
{


  if ((encoding & 0x60) == 0x60)
    return 0;

  switch (encoding & 7)
    {
    case 130: return 2;
    case 129: return 4;
    case 128: return 8;
    case 131: return ptr_size;
    default:
      break;
    }

  return 0;
}
