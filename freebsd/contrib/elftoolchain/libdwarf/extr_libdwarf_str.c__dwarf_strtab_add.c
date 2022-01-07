
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_4__ {size_t dbg_strtab_size; size_t dbg_strtab_cap; char* dbg_strtab; } ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Debug ;


 int DWARF_SET_ERROR (TYPE_1__*,int *,int) ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int assert (int) ;
 char* realloc (char*,size_t) ;
 int strlen (char*) ;
 int strncpy (char*,char*,size_t) ;

int
_dwarf_strtab_add(Dwarf_Debug dbg, char *string, uint64_t *off,
    Dwarf_Error *error)
{
 size_t len;

 assert(dbg != ((void*)0) && string != ((void*)0));

 len = strlen(string) + 1;
 while (dbg->dbg_strtab_size + len > dbg->dbg_strtab_cap) {
  dbg->dbg_strtab_cap *= 2;
  dbg->dbg_strtab = realloc(dbg->dbg_strtab,
      (size_t) dbg->dbg_strtab_cap);
  if (dbg->dbg_strtab == ((void*)0)) {
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   return (DW_DLE_MEMORY);
  }
 }

 if (off != ((void*)0))
  *off = dbg->dbg_strtab_size;

 strncpy(&dbg->dbg_strtab[dbg->dbg_strtab_size], string, len - 1);
 dbg->dbg_strtab_size += len;
 dbg->dbg_strtab[dbg->dbg_strtab_size - 1] = '\0';

 return (DW_DLE_NONE);
}
