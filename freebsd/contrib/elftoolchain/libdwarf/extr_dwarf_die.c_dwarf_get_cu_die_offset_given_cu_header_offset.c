
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Off ;
typedef int Dwarf_Error ;
typedef int Dwarf_Debug ;


 int dwarf_get_cu_die_offset_given_cu_header_offset_b (int ,int ,int,int *,int *) ;

int
dwarf_get_cu_die_offset_given_cu_header_offset(Dwarf_Debug dbg,
    Dwarf_Off in_cu_header_offset, Dwarf_Off *out_cu_die_offset,
    Dwarf_Error *error)
{

 return (dwarf_get_cu_die_offset_given_cu_header_offset_b(dbg,
     in_cu_header_offset, 1, out_cu_die_offset, error));
}
