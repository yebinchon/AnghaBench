
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef int sh ;
struct TYPE_25__ {int e_machine; } ;
struct TYPE_24__ {int dbg_machine; TYPE_3__* dbg_iface; } ;
struct TYPE_20__ {int load_section; int get_section_count; int get_pointer_size; int get_length_size; int get_byte_order; int get_section_info; } ;
struct TYPE_23__ {int eo_seccnt; TYPE_12__* eo_data; int eo_strndx; int * eo_shdr; TYPE_8__ eo_ehdr; TYPE_1__ eo_methods; int * eo_elf; } ;
struct TYPE_22__ {TYPE_1__* methods; TYPE_4__* object; } ;
struct TYPE_21__ {int sh_name; } ;
struct TYPE_19__ {int * ed_data; } ;
struct TYPE_18__ {scalar_t__ applyreloc; } ;
typedef TYPE_2__ GElf_Shdr ;
typedef int Elf_Scn ;
typedef int Elf_Data ;
typedef int Elf ;
typedef TYPE_3__ Dwarf_Obj_Access_Interface ;
typedef int Dwarf_Error ;
typedef TYPE_4__ Dwarf_Elf_Object ;
typedef int Dwarf_Elf_Data ;
typedef TYPE_5__* Dwarf_Debug ;


 int DWARF_SET_ELF_ERROR (TYPE_5__*,int *) ;
 int DWARF_SET_ERROR (TYPE_5__*,int *,int) ;
 int DW_DLE_ELF ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int _DWARF_SET_ERROR (TYPE_5__*,int *,int,int) ;
 int _dwarf_elf_deinit (TYPE_5__*) ;
 int _dwarf_elf_get_byte_order ;
 int _dwarf_elf_get_length_size ;
 int _dwarf_elf_get_pointer_size ;
 int _dwarf_elf_get_section_count ;
 int _dwarf_elf_get_section_info ;
 int _dwarf_elf_load_section ;
 int _dwarf_elf_relocate (TYPE_5__*,int *,TYPE_12__*,size_t,size_t,int *,int *) ;
 TYPE_10__ _libdwarf ;
 int assert (int) ;
 void* calloc (int,int) ;
 char** debug_name ;
 int elf_errno () ;
 void* elf_getdata (int *,int *) ;
 int elf_getshstrndx (int *,int *) ;
 size_t elf_ndxscn (int *) ;
 int * elf_nextscn (int *,int *) ;
 char* elf_strptr (int *,int ,int ) ;
 int free (TYPE_3__*) ;
 int * gelf_getehdr (int *,TYPE_8__*) ;
 int * gelf_getshdr (int *,TYPE_2__*) ;
 int memcpy (int *,TYPE_2__*,int) ;
 scalar_t__ strcmp (char const*,char*) ;

int
_dwarf_elf_init(Dwarf_Debug dbg, Elf *elf, Dwarf_Error *error)
{
 Dwarf_Obj_Access_Interface *iface;
 Dwarf_Elf_Object *e;
 const char *name;
 GElf_Shdr sh;
 Elf_Scn *scn;
 Elf_Data *symtab_data;
 size_t symtab_ndx;
 int elferr, i, j, n, ret;

 ret = DW_DLE_NONE;

 if ((iface = calloc(1, sizeof(*iface))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }

 if ((e = calloc(1, sizeof(*e))) == ((void*)0)) {
  free(iface);
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }

 e->eo_elf = elf;
 e->eo_methods.get_section_info = _dwarf_elf_get_section_info;
 e->eo_methods.get_byte_order = _dwarf_elf_get_byte_order;
 e->eo_methods.get_length_size = _dwarf_elf_get_length_size;
 e->eo_methods.get_pointer_size = _dwarf_elf_get_pointer_size;
 e->eo_methods.get_section_count = _dwarf_elf_get_section_count;
 e->eo_methods.load_section = _dwarf_elf_load_section;

 iface->object = e;
 iface->methods = &e->eo_methods;

 dbg->dbg_iface = iface;

 if (gelf_getehdr(elf, &e->eo_ehdr) == ((void*)0)) {
  DWARF_SET_ELF_ERROR(dbg, error);
  ret = DW_DLE_ELF;
  goto fail_cleanup;
 }

 dbg->dbg_machine = e->eo_ehdr.e_machine;

 if (!elf_getshstrndx(elf, &e->eo_strndx)) {
  DWARF_SET_ELF_ERROR(dbg, error);
  ret = DW_DLE_ELF;
  goto fail_cleanup;
 }

 n = 0;
 symtab_ndx = 0;
 symtab_data = ((void*)0);
 scn = ((void*)0);
 (void) elf_errno();
 while ((scn = elf_nextscn(elf, scn)) != ((void*)0)) {
  if (gelf_getshdr(scn, &sh) == ((void*)0)) {
   DWARF_SET_ELF_ERROR(dbg, error);
   ret = DW_DLE_ELF;
   goto fail_cleanup;
  }

  if ((name = elf_strptr(elf, e->eo_strndx, sh.sh_name)) ==
      ((void*)0)) {
   DWARF_SET_ELF_ERROR(dbg, error);
   ret = DW_DLE_ELF;
   goto fail_cleanup;
  }

  if (!strcmp(name, ".symtab")) {
   symtab_ndx = elf_ndxscn(scn);
   if ((symtab_data = elf_getdata(scn, ((void*)0))) == ((void*)0)) {
    elferr = elf_errno();
    if (elferr != 0) {
     _DWARF_SET_ERROR(((void*)0), error,
         DW_DLE_ELF, elferr);
     ret = DW_DLE_ELF;
     goto fail_cleanup;
    }
   }
   continue;
  }

  for (i = 0; debug_name[i] != ((void*)0); i++) {
   if (!strcmp(name, debug_name[i]))
    n++;
  }
 }
 elferr = elf_errno();
 if (elferr != 0) {
  DWARF_SET_ELF_ERROR(dbg, error);
  return (DW_DLE_ELF);
 }

 e->eo_seccnt = n;

 if (n == 0)
  return (DW_DLE_NONE);

 if ((e->eo_data = calloc(n, sizeof(Dwarf_Elf_Data))) == ((void*)0) ||
     (e->eo_shdr = calloc(n, sizeof(GElf_Shdr))) == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_MEMORY);
  ret = DW_DLE_MEMORY;
  goto fail_cleanup;
 }

 scn = ((void*)0);
 j = 0;
 while ((scn = elf_nextscn(elf, scn)) != ((void*)0) && j < n) {
  if (gelf_getshdr(scn, &sh) == ((void*)0)) {
   DWARF_SET_ELF_ERROR(dbg, error);
   ret = DW_DLE_ELF;
   goto fail_cleanup;
  }

  memcpy(&e->eo_shdr[j], &sh, sizeof(sh));

  if ((name = elf_strptr(elf, e->eo_strndx, sh.sh_name)) ==
      ((void*)0)) {
   DWARF_SET_ELF_ERROR(dbg, error);
   ret = DW_DLE_ELF;
   goto fail_cleanup;
  }

  for (i = 0; debug_name[i] != ((void*)0); i++) {
   if (strcmp(name, debug_name[i]))
    continue;

   (void) elf_errno();
   if ((e->eo_data[j].ed_data = elf_getdata(scn, ((void*)0))) ==
       ((void*)0)) {
    elferr = elf_errno();
    if (elferr != 0) {
     _DWARF_SET_ERROR(dbg, error,
         DW_DLE_ELF, elferr);
     ret = DW_DLE_ELF;
     goto fail_cleanup;
    }
   }

   if (_libdwarf.applyreloc) {
    if (_dwarf_elf_relocate(dbg, elf,
        &e->eo_data[j], elf_ndxscn(scn), symtab_ndx,
        symtab_data, error) != DW_DLE_NONE)
     goto fail_cleanup;
   }

   j++;
  }
 }

 assert(j == n);

 return (DW_DLE_NONE);

fail_cleanup:

 _dwarf_elf_deinit(dbg);

 return (ret);
}
