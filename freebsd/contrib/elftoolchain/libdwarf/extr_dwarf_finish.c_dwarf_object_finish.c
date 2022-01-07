
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;


 int DW_DLV_OK ;
 int _dwarf_deinit (int *) ;
 int free (int *) ;

int
dwarf_object_finish(Dwarf_Debug dbg, Dwarf_Error *error)
{
 (void) error;

 if (dbg == ((void*)0))
  return (DW_DLV_OK);

 _dwarf_deinit(dbg);

 free(dbg);

 return (DW_DLV_OK);
}
