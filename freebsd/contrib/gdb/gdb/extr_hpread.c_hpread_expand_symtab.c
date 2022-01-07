
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char kind; scalar_t__ extension; } ;
union dnttentry {TYPE_1__ dblock; } ;
struct symtab {int dummy; } ;
struct section_offsets {int dummy; } ;
struct objfile {int dummy; } ;
struct dntt_type_block {int dummy; } ;
typedef int CORE_ADDR ;


 scalar_t__ DNTT_TYPE_MODULE ;
 scalar_t__ DNTT_TYPE_SRCFILE ;
 int HP_DEMANGLING_STYLE_STRING ;
 int QUIT ;
 int SECT_OFF_TEXT (struct objfile*) ;
 scalar_t__ current_demangling_style ;
 struct objfile* current_objfile ;
 scalar_t__ edg_demangling ;
 struct symtab* end_symtab (int ,struct objfile*,int ) ;
 int hp_som_som_object_present ;
 union dnttentry* hpread_get_lntt (int,struct objfile*) ;
 int hpread_process_one_debug_symbol (union dnttentry*,char*,struct section_offsets*,struct objfile*,int ,int,char*,unsigned int,int*) ;
 scalar_t__ last_source_file ;
 int record_debugformat (char*) ;
 int set_demangling_style (int ) ;
 int set_namestring (union dnttentry*,char**,struct objfile*) ;
 int start_symtab (char*,int *,int ) ;
 scalar_t__ subfile_stack ;
 unsigned int symnum ;

__attribute__((used)) static struct symtab *
hpread_expand_symtab (struct objfile *objfile, int sym_offset, int sym_size,
        CORE_ADDR text_offset, int text_size,
        struct section_offsets *section_offsets, char *filename)
{
  char *namestring;
  union dnttentry *dn_bufp;
  unsigned max_symnum;
  int at_module_boundary = 0;


  int sym_index = sym_offset / sizeof (struct dntt_type_block);

  current_objfile = objfile;
  subfile_stack = 0;

  last_source_file = 0;



  if (current_demangling_style != edg_demangling)
    {

      set_demangling_style (HP_DEMANGLING_STYLE_STRING);
    }

  dn_bufp = hpread_get_lntt (sym_index, objfile);
  if (!((dn_bufp->dblock.kind == (unsigned char) DNTT_TYPE_SRCFILE) ||
 (dn_bufp->dblock.kind == (unsigned char) DNTT_TYPE_MODULE)))
    {
      start_symtab ("globals", ((void*)0), 0);
      record_debugformat ("HP");
    }
  max_symnum = sym_size / sizeof (struct dntt_type_block);




  for (symnum = 0;
       symnum < max_symnum;
       symnum++)
    {
      QUIT;
      dn_bufp = hpread_get_lntt (sym_index + symnum, objfile);

      if (dn_bufp->dblock.extension)
 continue;


      set_namestring (dn_bufp, &namestring, objfile);

      hpread_process_one_debug_symbol (dn_bufp, namestring, section_offsets,
           objfile, text_offset, text_size,
           filename, symnum + sym_index,
           &at_module_boundary
 );
      if (at_module_boundary == -1)
 break;
    }

  current_objfile = ((void*)0);
  hp_som_som_object_present = 1;

  return end_symtab (text_offset + text_size, objfile, SECT_OFF_TEXT (objfile));
}
