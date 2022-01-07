
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ed_data; int * ed_alloc; } ;
struct TYPE_5__ {size_t eo_seccnt; TYPE_3__* eo_data; } ;
struct TYPE_4__ {int * d_buf; } ;
typedef int Dwarf_Small ;
typedef size_t Dwarf_Half ;
typedef TYPE_2__ Dwarf_Elf_Object ;
typedef TYPE_3__ Dwarf_Elf_Data ;


 int DW_DLE_ARGUMENT ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int assert (int ) ;

int
_dwarf_elf_load_section(void *obj, Dwarf_Half ndx, Dwarf_Small** ret_data,
    int *error)
{
 Dwarf_Elf_Object *e;
 Dwarf_Elf_Data *ed;

 e = obj;
 assert(e != ((void*)0));

 if (ret_data == ((void*)0)) {
  if (error)
   *error = DW_DLE_ARGUMENT;
  return (DW_DLV_ERROR);
 }

 if (ndx >= e->eo_seccnt) {
  if (error)
   *error = DW_DLE_NO_ENTRY;
  return (DW_DLV_NO_ENTRY);
 }

 ed = &e->eo_data[ndx];

 if (ed->ed_alloc != ((void*)0))
  *ret_data = ed->ed_alloc;
 else {
  if (ed->ed_data == ((void*)0)) {
   if (error)
    *error = DW_DLE_NO_ENTRY;
   return (DW_DLV_NO_ENTRY);
  }
  *ret_data = ed->ed_data->d_buf;
 }

 return (DW_DLV_OK);
}
