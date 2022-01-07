
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_6__ {unsigned long long ld_hipc; int * ld_s; scalar_t__ ld_lopc; } ;
typedef TYPE_1__ Dwarf_Locdesc ;
typedef int Dwarf_Error ;
typedef int Dwarf_Debug ;


 int DWARF_SET_ERROR (int ,int *,int) ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int _dwarf_loc_fill_locdesc (int ,TYPE_1__*,int *,int ,int ,int ,int ,int *) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;

int
_dwarf_loc_fill_locexpr(Dwarf_Debug dbg, Dwarf_Locdesc **ret_llbuf, uint8_t *in,
    uint64_t in_len, uint8_t pointer_size, uint8_t offset_size,
    uint8_t version, Dwarf_Error *error)
{
 Dwarf_Locdesc *llbuf;
 int ret;

 if ((llbuf = malloc(sizeof(Dwarf_Locdesc))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }
 llbuf->ld_lopc = 0;
 llbuf->ld_hipc = ~0ULL;
 llbuf->ld_s = ((void*)0);

 ret = _dwarf_loc_fill_locdesc(dbg, llbuf, in, in_len, pointer_size,
     offset_size, version, error);
 if (ret != DW_DLE_NONE) {
  free(llbuf);
  return (ret);
 }

 *ret_llbuf = llbuf;

 return (ret);
}
