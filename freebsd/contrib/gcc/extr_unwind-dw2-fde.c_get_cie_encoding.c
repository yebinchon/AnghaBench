
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_cie {unsigned char* augmentation; int version; } ;
typedef int _Unwind_Word ;
typedef int _Unwind_Sword ;
typedef int _Unwind_Ptr ;


 int DW_EH_PE_absptr ;
 unsigned char* read_encoded_value_with_base (unsigned char const,int ,unsigned char const*,int *) ;
 unsigned char* read_sleb128 (unsigned char const*,int *) ;
 unsigned char* read_uleb128 (unsigned char const*,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static int
get_cie_encoding (const struct dwarf_cie *cie)
{
  const unsigned char *aug, *p;
  _Unwind_Ptr dummy;
  _Unwind_Word utmp;
  _Unwind_Sword stmp;

  aug = cie->augmentation;
  if (aug[0] != 'z')
    return DW_EH_PE_absptr;

  p = aug + strlen ((const char *)aug) + 1;
  p = read_uleb128 (p, &utmp);
  p = read_sleb128 (p, &stmp);
  if (cie->version == 1)
    p++;
  else
    p = read_uleb128 (p, &utmp);

  aug++;
  p = read_uleb128 (p, &utmp);
  while (1)
    {

      if (*aug == 'R')
 return *p;

      else if (*aug == 'P')
 {



   p = read_encoded_value_with_base (*p & 0x7F, 0, p + 1, &dummy);
 }

      else if (*aug == 'L')
 p++;

      else
 return DW_EH_PE_absptr;
      aug++;
    }
}
