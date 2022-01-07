
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;
struct cleanup {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int ADA_MAIN_PROGRAM_SYMBOL_NAME ;
 scalar_t__ SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 int begin_annotate_level ;
 int begin_cleanup ;
 int do_cleanups (struct cleanup*) ;
 int do_command (char*,char*,...) ;
 int error (char*) ;
 int extract_string (scalar_t__,char*) ;
 int have_full_symbols () ;
 int have_partial_symbols () ;
 struct minimal_symbol* lookup_minimal_symbol (int ,int *,int *) ;
 struct cleanup* make_cleanup (int ,int *) ;

__attribute__((used)) static void
begin_command (char *args, int from_tty)
{
  struct minimal_symbol *msym;
  CORE_ADDR main_program_name_addr;
  char main_program_name[1024];
  struct cleanup *old_chain = make_cleanup (begin_cleanup, ((void*)0));
  begin_annotate_level = 2;


  if (!have_full_symbols () && !have_partial_symbols ())
    error ("No symbol table is loaded.  Use the \"file\" command.");
  msym = lookup_minimal_symbol (ADA_MAIN_PROGRAM_SYMBOL_NAME, ((void*)0), ((void*)0));

  if (msym != ((void*)0))
    {
      main_program_name_addr = SYMBOL_VALUE_ADDRESS (msym);
      if (main_program_name_addr == 0)
 error ("Invalid address for Ada main program name.");


      extract_string (main_program_name_addr, main_program_name);


      do_command ("tbreak ", main_program_name, 0);
      do_command ("run ", args, 0);
    }
  else
    {
      do_command ("tbreak adainit", 0);
      do_command ("run ", args, 0);
      do_command ("up", 0);
      do_command ("tbreak +2", 0);
      do_command ("continue", 0);
      do_command ("step", 0);
    }

  do_cleanups (old_chain);
}
