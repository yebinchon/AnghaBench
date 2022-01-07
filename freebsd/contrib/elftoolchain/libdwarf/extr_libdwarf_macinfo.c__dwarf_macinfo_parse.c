
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_10__ {int (* read ) (scalar_t__,scalar_t__*,int) ;} ;
struct TYPE_9__ {int dmd_type; char* dmd_macro; void* dmd_fileindex; void* dmd_lineno; scalar_t__ dmd_offset; } ;
struct TYPE_8__ {scalar_t__ ds_size; scalar_t__ ds_data; } ;
typedef void* Dwarf_Unsigned ;
typedef void* Dwarf_Signed ;
typedef TYPE_1__ Dwarf_Section ;
typedef TYPE_2__ Dwarf_Macro_Details ;
typedef int Dwarf_Error ;
typedef TYPE_3__* Dwarf_Debug ;


 int DWARF_SET_ERROR (TYPE_3__*,int *,int) ;
 int DW_DLE_DEBUG_MACRO_INCONSISTENT ;
 int DW_DLE_NONE ;





 int _FILEINDEX_STACK_SIZE ;
 void* _dwarf_read_uleb128 (scalar_t__,scalar_t__*) ;
 int assert (int ) ;
 int stub1 (scalar_t__,scalar_t__*,int) ;

__attribute__((used)) static int
_dwarf_macinfo_parse(Dwarf_Debug dbg, Dwarf_Section *ds, uint64_t *off,
    Dwarf_Macro_Details *dmd, Dwarf_Unsigned *cnt, Dwarf_Error *error)
{
 Dwarf_Unsigned lineno;
 Dwarf_Signed fileindex[_FILEINDEX_STACK_SIZE];
 char *p;
 int i, type, sp;

 i = 0;
 sp = 0;
 fileindex[sp] = -1;
 while (*off < ds->ds_size) {

  if (dmd != ((void*)0))
   dmd[i].dmd_offset = *off;

  type = dbg->read(ds->ds_data, off, 1);

  if (dmd != ((void*)0)) {
   dmd[i].dmd_type = type;
   dmd[i].dmd_fileindex = fileindex[sp];
  }

  switch (type) {
  case 0:
   break;
  case 132:
  case 129:
  case 128:
   lineno = _dwarf_read_uleb128(ds->ds_data, off);
   p = (char *) ds->ds_data;
   if (dmd != ((void*)0)) {
    dmd[i].dmd_lineno = lineno;
    dmd[i].dmd_macro = p + *off;

   }
   while (p[(*off)++] != '\0')
    ;
   break;
  case 130:
   lineno = _dwarf_read_uleb128(ds->ds_data, off);
   if (sp >= _FILEINDEX_STACK_SIZE - 1) {
    assert(0);
   }
   fileindex[++sp] = _dwarf_read_uleb128(ds->ds_data, off);
   if (dmd != ((void*)0)) {
    dmd[i].dmd_lineno = lineno;
    dmd[i].dmd_fileindex = fileindex[sp];
   }
   break;
  case 131:
   if (sp > 0) {
    sp--;
    break;
   }

  default:
   DWARF_SET_ERROR(dbg, error,
       DW_DLE_DEBUG_MACRO_INCONSISTENT);
   return (DW_DLE_DEBUG_MACRO_INCONSISTENT);
  }

  i++;

  if (type == 0)
   break;
 }

 if (cnt != ((void*)0))
  *cnt = i;

 return (DW_DLE_NONE);
}
