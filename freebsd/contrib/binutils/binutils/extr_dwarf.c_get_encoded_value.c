
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dwarf_vma ;


 int DW_EH_PE_signed ;
 int byte_get (unsigned char*,int) ;
 int byte_get_signed (unsigned char*,int) ;
 int size_of_encoded_value (int) ;

__attribute__((used)) static dwarf_vma
get_encoded_value (unsigned char *data, int encoding)
{
  int size = size_of_encoded_value (encoding);

  if (encoding & DW_EH_PE_signed)
    return byte_get_signed (data, size);
  else
    return byte_get (data, size);
}
