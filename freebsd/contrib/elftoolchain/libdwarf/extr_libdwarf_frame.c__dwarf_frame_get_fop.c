
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef int Dwarf_Frame_Op ;
typedef int Dwarf_Error ;
typedef int Dwarf_Debug ;


 int DWARF_SET_ERROR (int ,int *,int) ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int _dwarf_frame_convert_inst (int ,int ,int *,int ,int *,int *,int *,int *) ;
 int * calloc (int ,int) ;
 int free (int *) ;

int
_dwarf_frame_get_fop(Dwarf_Debug dbg, uint8_t addr_size, uint8_t *insts,
    Dwarf_Unsigned len, Dwarf_Frame_Op **ret_oplist, Dwarf_Signed *ret_opcnt,
    Dwarf_Error *error)
{
 Dwarf_Frame_Op *oplist;
 Dwarf_Unsigned count;
 int ret;

 ret = _dwarf_frame_convert_inst(dbg, addr_size, insts, len, &count,
     ((void*)0), ((void*)0), error);
 if (ret != DW_DLE_NONE)
  return (ret);

 if ((oplist = calloc(count, sizeof(Dwarf_Frame_Op))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }

 ret = _dwarf_frame_convert_inst(dbg, addr_size, insts, len, &count,
     oplist, ((void*)0), error);
 if (ret != DW_DLE_NONE) {
  free(oplist);
  return (ret);
 }

 *ret_oplist = oplist;
 *ret_opcnt = count;

 return (DW_DLE_NONE);
}
