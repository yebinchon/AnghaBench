
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_UNIT ;

 int DW_EH_PE_omit ;



 int POINTER_SIZE ;
 int gcc_unreachable () ;

int
size_of_encoded_value (int encoding)
{
  if (encoding == DW_EH_PE_omit)
    return 0;

  switch (encoding & 0x07)
    {
    case 131:
      return POINTER_SIZE / BITS_PER_UNIT;
    case 130:
      return 2;
    case 129:
      return 4;
    case 128:
      return 8;
    default:
      gcc_unreachable ();
    }
}
