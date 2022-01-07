
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;




 int FALSE ;
 int TRUE ;

__attribute__((used)) static bfd_boolean
external_coff_symbol_p (int sym_class)
{
  switch (sym_class)
    {
    case 129:
    case 128:
      return TRUE;
    default:
      break;
    }
  return FALSE;
}
