
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf ;
typedef int Dwarf_Ptr ;
typedef int Dwarf_Handler ;
typedef int Dwarf_Error ;
typedef int Dwarf_Debug ;


 int DWARF_SET_ELF_ERROR (int *,int *) ;
 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLC_READ ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_DEBUG_INFO_NULL ;
 int DW_DLE_NONE ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int ELF_C_READ ;
 int EV_CURRENT ;
 scalar_t__ EV_NONE ;
 int _dwarf_alloc (int *,int,int *) ;
 int _dwarf_elf_deinit (int ) ;
 int _dwarf_elf_init (int ,int *,int *) ;
 int _dwarf_init (int ,int ,int ,int ,int *) ;
 int * elf_begin (int,int ,int *) ;
 scalar_t__ elf_version (int ) ;
 int free (int ) ;

int
dwarf_init(int fd, int mode, Dwarf_Handler errhand, Dwarf_Ptr errarg,
    Dwarf_Debug *ret_dbg, Dwarf_Error *error)
{
 Dwarf_Debug dbg;
 Elf *elf;
 int ret;

 if (fd < 0 || ret_dbg == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (mode != DW_DLC_READ) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (elf_version(EV_CURRENT) == EV_NONE) {
  DWARF_SET_ELF_ERROR(((void*)0), error);
  return (DW_DLV_ERROR);
 }

 if ((elf = elf_begin(fd, ELF_C_READ, ((void*)0))) == ((void*)0)) {
  DWARF_SET_ELF_ERROR(((void*)0), error);
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
