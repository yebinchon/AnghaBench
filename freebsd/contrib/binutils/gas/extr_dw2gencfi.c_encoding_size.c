
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int offsetT ;


 unsigned char DW_EH_PE_omit ;



 int abort () ;
 int bfd_get_arch_size (int ) ;
 int stdoutput ;

__attribute__((used)) static offsetT
encoding_size (unsigned char encoding)
{
  if (encoding == DW_EH_PE_omit)
    return 0;
  switch (encoding & 0x7)
    {
    case 0:
      return bfd_get_arch_size (stdoutput) == 64 ? 8 : 4;
    case 130:
      return 2;
    case 129:
      return 4;
    case 128:
      return 8;
    default:
      abort ();
    }
}
