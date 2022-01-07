
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct stab_section_info {int num_sections; char* filename; scalar_t__* sections; struct stab_section_info* next; } ;
struct objfile {int md; int objfile_obstack; int section_offsets; int obfd; struct dbx_symfile_info* sym_stab_info; } ;
struct minimal_symbol {char* filename; } ;
struct dbx_symfile_info {struct stab_section_info* stab_section_info; } ;
typedef enum minimal_symbol_type { ____Placeholder_minimal_symbol_type } minimal_symbol_type ;
struct TYPE_9__ {unsigned short st_shndx; unsigned long st_size; } ;
struct TYPE_10__ {TYPE_1__ internal_elf_sym; } ;
typedef TYPE_2__ elf_symbol_type ;
struct TYPE_11__ {char* name; int flags; scalar_t__ value; TYPE_4__* section; } ;
typedef TYPE_3__ asymbol ;
struct TYPE_12__ {scalar_t__ vma; int flags; int index; } ;
typedef unsigned long MSYMBOL_SIZE ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ ANOFFSET (int ,int ) ;
 int BSF_FILE ;
 int BSF_FUNCTION ;
 int BSF_GLOBAL ;
 int BSF_LOCAL ;
 int BSF_WEAK ;
 int ELF_MAKE_MSYMBOL_SPECIAL (TYPE_3__*,struct minimal_symbol*) ;
 int SECT_OFF_BSS (struct objfile*) ;
 int SECT_OFF_DATA (struct objfile*) ;
 int SECT_OFF_RODATA (struct objfile*) ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_LOAD ;



 TYPE_4__ bfd_abs_section ;
 scalar_t__ bfd_get_symcount (int ) ;
 TYPE_4__ bfd_und_section ;
 int complaint (int *,char*,char*) ;
 int max (int,int) ;
 int memset (struct stab_section_info*,int ,size_t) ;
 int mst_abs ;
 int mst_bss ;
 int mst_data ;
 int mst_file_bss ;
 int mst_file_data ;
 int mst_file_text ;
 int mst_solib_trampoline ;
 int mst_text ;
 int mst_unknown ;
 char* obsavestring (char*,int ,int *) ;
 struct minimal_symbol* record_minimal_symbol (char*,scalar_t__,int,TYPE_4__*,struct objfile*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int symfile_complaints ;
 scalar_t__ xmmalloc (int ,size_t) ;

__attribute__((used)) static void
elf_symtab_read (struct objfile *objfile, int dynamic,
   long number_of_symbols, asymbol **symbol_table)
{
  long storage_needed;
  asymbol *sym;
  long i;
  CORE_ADDR symaddr;
  CORE_ADDR offset;
  enum minimal_symbol_type ms_type;


  struct stab_section_info *sectinfo = ((void*)0);


  asymbol *filesym = 0;




  struct dbx_symfile_info *dbx = objfile->sym_stab_info;
  int stripped = (bfd_get_symcount (objfile->obfd) == 0);

  if (1)
    {
      for (i = 0; i < number_of_symbols; i++)
 {
   sym = symbol_table[i];
   if (sym->name == ((void*)0) || *sym->name == '\0')
     {


       continue;
     }

          offset = ANOFFSET (objfile->section_offsets, sym->section->index);
   if (dynamic
       && sym->section == &bfd_und_section
       && (sym->flags & BSF_FUNCTION))
     {
       struct minimal_symbol *msym;
       symaddr = sym->value;
       if (symaddr == 0)
  continue;
       symaddr += offset;
       msym = record_minimal_symbol
  ((char *) sym->name, symaddr,
   mst_solib_trampoline, sym->section, objfile);




       continue;
     }




   if (dynamic && !stripped)
     continue;
   if (sym->flags & BSF_FILE)
     {


       if (sectinfo != ((void*)0))
  {
    sectinfo->next = dbx->stab_section_info;
    dbx->stab_section_info = sectinfo;
    sectinfo = ((void*)0);
  }
       filesym = sym;





     }
   else if (sym->flags & (BSF_GLOBAL | BSF_LOCAL | BSF_WEAK))
     {
       struct minimal_symbol *msym;





       symaddr = sym->value + sym->section->vma;

       if (sym->section != &bfd_abs_section)
  {
    symaddr += offset;
  }



       if (sym->section == &bfd_abs_section)
  {



    unsigned short shndx =
    ((elf_symbol_type *) sym)->internal_elf_sym.st_shndx;

    switch (shndx)
      {
      case 128:
        ms_type = mst_text;
        break;
      case 129:
        ms_type = mst_data;
        break;
      case 130:
        ms_type = mst_bss;
        break;
      default:
        ms_type = mst_abs;
      }



    if (ms_type != mst_abs)
      {
        if (sym->name[0] == '.')
   continue;
        symaddr += offset;
      }
  }
       else if (sym->section->flags & SEC_CODE)
  {
    if (sym->flags & BSF_GLOBAL)
      {
        ms_type = mst_text;
      }
    else if ((sym->name[0] == '.' && sym->name[1] == 'L')
      || ((sym->flags & BSF_LOCAL)
          && sym->name[0] == '$'
          && sym->name[1] == 'L'))







      continue;
    else
      {
        ms_type = mst_file_text;
      }
  }
       else if (sym->section->flags & SEC_ALLOC)
  {
    if (sym->flags & (BSF_GLOBAL | BSF_WEAK))
      {
        if (sym->section->flags & SEC_LOAD)
   {
     ms_type = mst_data;
   }
        else
   {
     ms_type = mst_bss;
   }
      }
    else if (sym->flags & BSF_LOCAL)
      {


        int special_local_sect;
        if (strcmp ("Bbss.bss", sym->name) == 0)
   special_local_sect = SECT_OFF_BSS (objfile);
        else if (strcmp ("Ddata.data", sym->name) == 0)
   special_local_sect = SECT_OFF_DATA (objfile);
        else if (strcmp ("Drodata.rodata", sym->name) == 0)
   special_local_sect = SECT_OFF_RODATA (objfile);
        else
   special_local_sect = -1;
        if (special_local_sect >= 0)
   {


     if (sectinfo == ((void*)0))
       {
         int max_index;
         size_t size;

         max_index
    = max (SECT_OFF_BSS (objfile),
           max (SECT_OFF_DATA (objfile),
         SECT_OFF_RODATA (objfile)));
         size = (sizeof (struct stab_section_info)
          + (sizeof (CORE_ADDR)
      * max_index));
         sectinfo = (struct stab_section_info *)
    xmmalloc (objfile->md, size);
         memset (sectinfo, 0, size);
         sectinfo->num_sections = max_index;
         if (filesym == ((void*)0))
    {
      complaint (&symfile_complaints,
          "elf/stab section information %s without a preceding file symbol",
          sym->name);
    }
         else
    {
      sectinfo->filename =
        (char *) filesym->name;
    }
       }
     if (sectinfo->sections[special_local_sect] != 0)
       complaint (&symfile_complaints,
           "duplicated elf/stab section information for %s",
           sectinfo->filename);

     symaddr = sym->value + sym->section->vma;


     if (sym->section != &bfd_abs_section)
       symaddr += offset;
     sectinfo->sections[special_local_sect] = symaddr;


     continue;
   }


        if (sym->section->flags & SEC_LOAD)
   {
     ms_type = mst_file_data;
   }
        else
   {
     ms_type = mst_file_bss;
   }
      }
    else
      {
        ms_type = mst_unknown;
      }
  }
       else
  {





    continue;
  }
       msym = record_minimal_symbol
  ((char *) sym->name, symaddr,
   ms_type, sym->section, objfile);
       if (msym)
       {

  unsigned long size = ((elf_symbol_type *) sym)->internal_elf_sym.st_size;
  MSYMBOL_SIZE(msym) = size;
       }




       ELF_MAKE_MSYMBOL_SPECIAL (sym, msym);
     }
 }
    }
}
