
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf ;
typedef int Dwarf_Ptr ;
typedef int Dwarf_Handler ;
typedef int Dwarf_Error ;
typedef int Dwarf_Debug ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLC_READ ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_DEBUG_INFO_NULL ;
 int DW_DLE_NONE ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int _dwarf_alloc (int *,int,int *) ;
 int _dwarf_elf_deinit (int ) ;
 int _dwarf_elf_init (int ,int *,int *) ;
 int _dwarf_init (int ,int ,int ,int ,int *) ;
 int free (int ) ;

int
dwarf_elf_init(Elf *elf, int mode, Dwarf_Handler errhand, Dwarf_Ptr errarg,
    Dwarf_Debug *ret_dbg, Dwarf_Error *error)
{
 Dwarf_Debug dbg;
 int ret;

 if (elf == ((void*)0) || ret_dbg == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (mode != DW_DLC_READ) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (_dwarf_alloc(&dbg, mode, error) != DW_DLE_NONE)
  return (DW_DLV_ERROR);

 if (_dwarf_elf_init(dbg, elf, error) != DW_DLE_NONE) {
  free(dbg);
  return (DW_DLV_ERROR);
 }

 if ((ret = _dwarf_init(dbg, 0, errhand, errarg, error)) !=
     DW_DLE_NONE) {
  _dwarf_elf_deinit(dbg);
  free(dbg);
  if (ret == DW_DLE_DEBUG_INFO_NULL)
   return (DW_DLV_NO_ENTRY);
  else
   return (DW_DLV_ERROR);
 }

 *ret_dbg = dbg;

 return (DW_DLV_OK);
}
