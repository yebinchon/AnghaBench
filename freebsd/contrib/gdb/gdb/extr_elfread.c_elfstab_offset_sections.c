
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_section_info {char* filename; scalar_t__ found; int num_sections; int * sections; struct stab_section_info* next; } ;
struct section_offsets {int * offsets; } ;
struct partial_symtab {char* filename; struct section_offsets* section_offsets; } ;
struct objfile {int num_sections; int objfile_obstack; struct dbx_symfile_info* sym_stab_info; } ;
struct dbx_symfile_info {struct stab_section_info* stab_section_info; } ;


 int SIZEOF_N_SECTION_OFFSETS (int ) ;
 int complaint (int *,char*,char*) ;
 scalar_t__ obstack_alloc (int *,int ) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int symfile_complaints ;

void
elfstab_offset_sections (struct objfile *objfile, struct partial_symtab *pst)
{
  char *filename = pst->filename;
  struct dbx_symfile_info *dbx = objfile->sym_stab_info;
  struct stab_section_info *maybe = dbx->stab_section_info;
  struct stab_section_info *questionable = 0;
  int i;
  char *p;



  while (0 != (p = strchr (filename, '/')))
    filename = p + 1;




  for (; maybe; maybe = maybe->next)
    {
      if (filename[0] == maybe->filename[0]
   && strcmp (filename, maybe->filename) == 0)
 {


   if (0 == maybe->found)
     break;
   questionable = maybe;
 }
    }

  if (maybe == 0 && questionable != 0)
    {
      complaint (&symfile_complaints,
   "elf/stab section information questionable for %s", filename);
      maybe = questionable;
    }

  if (maybe)
    {

      maybe->found++;
      pst->section_offsets = (struct section_offsets *)
 obstack_alloc (&objfile->objfile_obstack,
         SIZEOF_N_SECTION_OFFSETS (objfile->num_sections));
      for (i = 0; i < maybe->num_sections; i++)
 (pst->section_offsets)->offsets[i] = maybe->sections[i];
      return;
    }


  if (dbx->stab_section_info)
    complaint (&symfile_complaints,
        "elf/stab section information missing for %s", filename);
}
