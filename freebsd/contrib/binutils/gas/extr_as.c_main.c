
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
struct defsym_list {struct defsym_list* next; int value; int name; } ;
typedef int segT ;


 int END_PROGRESS (char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int HOST_SPECIAL_INIT (int,char**) ;
 scalar_t__ IS_ELF ;
 int LC_CTYPE ;
 int LC_MESSAGES ;
 int LOCALEDIR ;
 int OBJ_DEFAULT_OUTPUT_FILE_NAME ;
 scalar_t__ OUTPUT_FLAVOR ;
 int PACKAGE ;
 int PROGRESS (int) ;
 int SEC_CODE ;
 int SEC_READONLY ;
 int START_PROGRESS (char*,int ) ;
 int S_SET_VOLATILE (int *) ;
 int _ (char*) ;
 int absolute_section ;
 int as_bad (int ,scalar_t__) ;
 int assert (int) ;
 int bfd_init () ;
 int bfd_set_error_program_name (char*) ;
 int bfd_set_section_flags (scalar_t__,int ,int) ;
 scalar_t__ bfd_target_elf_flavour ;
 int bindtextdomain (int ,int ) ;
 int cfi_finish () ;
 int chunksize ;
 int close_output_file ;
 int cond_finish_check (int) ;
 int create_obj_attrs_section () ;
 scalar_t__ debug_memory ;
 struct defsym_list* defsyms ;
 int dump_statistics ;
 int dwarf2_finish () ;
 int expandargv (int*,char***) ;
 int expr_begin () ;
 scalar_t__ flag_always_generate_output ;
 scalar_t__ flag_execstack ;
 scalar_t__ flag_fatal_warnings ;
 int flag_macro_alternate ;
 int flag_mri ;
 scalar_t__ flag_noexecstack ;
 scalar_t__ flag_print_statistics ;
 int frag_init () ;
 int free (struct defsym_list*) ;
 int get_run_time () ;
 scalar_t__ had_errors () ;
 scalar_t__ had_warnings () ;
 int hex_init () ;
 int input_scrub_begin () ;
 int input_scrub_end () ;
 int itbl_init () ;
 int listing_filename ;
 int listing_print (int ) ;
 int macro_expr ;
 int macro_init (int ,int,int,int ) ;
 int md_end () ;
 char* myname ;
 int out_file_name ;
 int output_file_create (int ) ;
 int parse_args (int*,char***) ;
 int perform_an_assembly_pass (int,char**) ;
 int print_dependencies () ;
 int read_begin () ;
 scalar_t__ seen_at_least_1_file () ;
 int select_emulation_mode (int,char**) ;
 int setlocale (int ,char*) ;
 int start_time ;
 scalar_t__ stdoutput ;
 int subseg_new (char*,int ) ;
 int subsegs_begin () ;
 int subsegs_finish () ;
 int symbol_begin () ;
 int * symbol_new (int ,int ,int ,int *) ;
 int symbol_table_insert (int *) ;
 int tc_init_after_args () ;
 int textdomain (int ) ;
 int unlink_if_ordinary (int ) ;
 int write_object_file () ;
 int xatexit (int ) ;
 int xexit (int ) ;
 int xmalloc_set_program_name (char*) ;
 int zero_address_frag ;

int
main (int argc, char ** argv)
{
  int macro_strip_at;
  int keep_it;

  start_time = get_run_time ();







  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);

  if (debug_memory)
    chunksize = 64;





  myname = argv[0];
  xmalloc_set_program_name (myname);

  expandargv (&argc, &argv);

  START_PROGRESS (myname, 0);





  out_file_name = "a.out";

  hex_init ();
  bfd_init ();
  bfd_set_error_program_name (myname);





  PROGRESS (1);


  parse_args (&argc, &argv);
  symbol_begin ();
  frag_init ();
  subsegs_begin ();
  read_begin ();
  input_scrub_begin ();
  expr_begin ();



  xatexit (close_output_file);


  if (flag_print_statistics)
    xatexit (dump_statistics);

  macro_strip_at = 0;




  macro_init (flag_macro_alternate, flag_mri, macro_strip_at, macro_expr);

  PROGRESS (1);

  output_file_create (out_file_name);
  assert (stdoutput != 0);





  itbl_init ();




  while (defsyms != ((void*)0))
    {
      symbolS *sym;
      struct defsym_list *next;

      sym = symbol_new (defsyms->name, absolute_section, defsyms->value,
   &zero_address_frag);




      S_SET_VOLATILE (sym);
      symbol_table_insert (sym);
      next = defsyms->next;
      free (defsyms);
      defsyms = next;
    }

  PROGRESS (1);


  perform_an_assembly_pass (argc, argv);

  cond_finish_check (-1);
  dwarf2_finish ();



  cfi_finish ();

  if (seen_at_least_1_file ()
      && (flag_always_generate_output || had_errors () == 0))
    keep_it = 1;
  else
    keep_it = 0;





  subsegs_finish ();

  if (keep_it)
    write_object_file ();


  listing_print (listing_filename);


  if (flag_fatal_warnings && had_warnings () > 0 && had_errors () == 0)
    as_bad (_("%d warnings, treating warnings as errors"), had_warnings ());

  if (had_errors () > 0 && ! flag_always_generate_output)
    keep_it = 0;

  if (!keep_it)
    unlink_if_ordinary (out_file_name);

  input_scrub_end ();

  END_PROGRESS (myname);



  if (had_errors () > 0)
    xexit (EXIT_FAILURE);


  print_dependencies ();

  xexit (EXIT_SUCCESS);
}
