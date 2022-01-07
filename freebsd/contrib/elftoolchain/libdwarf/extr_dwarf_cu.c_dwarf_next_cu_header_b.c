
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Unsigned ;
typedef int Dwarf_Off ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef int Dwarf_Debug ;


 int dwarf_next_cu_header_c (int ,int,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;

int
dwarf_next_cu_header_b(Dwarf_Debug dbg, Dwarf_Unsigned *cu_length,
    Dwarf_Half *cu_version, Dwarf_Off *cu_abbrev_offset,
    Dwarf_Half *cu_pointer_size, Dwarf_Half *cu_offset_size,
    Dwarf_Half *cu_extension_size, Dwarf_Unsigned *cu_next_offset,
    Dwarf_Error *error)
{

 return (dwarf_next_cu_header_c(dbg, 1, cu_length, cu_version,
     cu_abbrev_offset, cu_pointer_size, cu_offset_size,
     cu_extension_size, ((void*)0), ((void*)0), cu_next_offset, error));
}
