
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct TYPE_2__ {int main_func_highpc; int main_func_lowpc; } ;
struct objfile {TYPE_1__ ei; int section_offsets; int * obfd; } ;
struct cleanup {int dummy; } ;
typedef int bfd ;
typedef int CORE_ADDR ;


 int ANOFFSET (int ,int ) ;
 int BLOCK_END (int ) ;
 int BLOCK_START (int ) ;
 scalar_t__ LOC_BLOCK ;
 int SYMBOL_BLOCK_VALUE (struct symbol*) ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 int VAR_DOMAIN ;
 int do_cleanups (struct cleanup*) ;
 int init_minimal_symbol_collection () ;
 int install_minimal_symbols (struct objfile*) ;
 struct symbol* lookup_symbol (int ,int *,int ,int *,int *) ;
 int main_name () ;
 struct cleanup* make_cleanup_discard_minimal_symbols () ;
 int nlm_symtab_read (int *,int ,struct objfile*) ;
 int stabsect_build_psymtabs (struct objfile*,int,char*,char*,char*) ;

__attribute__((used)) static void
nlm_symfile_read (struct objfile *objfile, int mainline)
{
  bfd *abfd = objfile->obfd;
  struct cleanup *back_to;
  CORE_ADDR offset;
  struct symbol *mainsym;

  init_minimal_symbol_collection ();
  back_to = make_cleanup_discard_minimal_symbols ();



  offset = ANOFFSET (objfile->section_offsets, 0);




  nlm_symtab_read (abfd, offset, objfile);




  install_minimal_symbols (objfile);
  do_cleanups (back_to);

  stabsect_build_psymtabs (objfile, mainline, ".stab",
      ".stabstr", ".text");

  mainsym = lookup_symbol (main_name (), ((void*)0), VAR_DOMAIN, ((void*)0), ((void*)0));

  if (mainsym
      && SYMBOL_CLASS (mainsym) == LOC_BLOCK)
    {
      objfile->ei.main_func_lowpc = BLOCK_START (SYMBOL_BLOCK_VALUE (mainsym));
      objfile->ei.main_func_highpc = BLOCK_END (SYMBOL_BLOCK_VALUE (mainsym));
    }



}
