#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct defsym_list {struct defsym_list* next; int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  segT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 scalar_t__ IS_ELF ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  OBJ_DEFAULT_OUTPUT_FILE_NAME ; 
 scalar_t__ OUTPUT_FLAVOR ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SEC_CODE ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  absolute_section ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ bfd_target_elf_flavour ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int chunksize ; 
 int /*<<< orphan*/  close_output_file ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ debug_memory ; 
 struct defsym_list* defsyms ; 
 int /*<<< orphan*/  dump_statistics ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int*,char***) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ flag_always_generate_output ; 
 scalar_t__ flag_execstack ; 
 scalar_t__ flag_fatal_warnings ; 
 int /*<<< orphan*/  flag_macro_alternate ; 
 int flag_mri ; 
 scalar_t__ flag_noexecstack ; 
 scalar_t__ flag_print_statistics ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct defsym_list*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ FUNC21 () ; 
 scalar_t__ FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  listing_filename ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  macro_expr ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 char* myname ; 
 int /*<<< orphan*/  out_file_name ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int*,char***) ; 
 int /*<<< orphan*/  FUNC32 (int,char**) ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 () ; 
 scalar_t__ FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 (int,char**) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  start_time ; 
 scalar_t__ stdoutput ; 
 int /*<<< orphan*/  FUNC38 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 () ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int /*<<< orphan*/  FUNC41 () ; 
 int /*<<< orphan*/ * FUNC42 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC44 () ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 () ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (char*) ; 
 int /*<<< orphan*/  zero_address_frag ; 

int
FUNC51 (int argc, char ** argv)
{
  int macro_strip_at;
  int keep_it;

  start_time = FUNC20 ();

#if defined (HAVE_SETLOCALE) && defined (HAVE_LC_MESSAGES)
  setlocale (LC_MESSAGES, "");
#endif
#if defined (HAVE_SETLOCALE)
  setlocale (LC_CTYPE, "");
#endif
  FUNC11 (PACKAGE, LOCALEDIR);
  FUNC45 (PACKAGE);

  if (debug_memory)
    chunksize = 64;

#ifdef HOST_SPECIAL_INIT
  HOST_SPECIAL_INIT (argc, argv);
#endif

  myname = argv[0];
  FUNC50 (myname);

  FUNC16 (&argc, &argv);

  FUNC3 (myname, 0);

#ifndef OBJ_DEFAULT_OUTPUT_FILE_NAME
#define OBJ_DEFAULT_OUTPUT_FILE_NAME "a.out"
#endif

  out_file_name = OBJ_DEFAULT_OUTPUT_FILE_NAME;

  FUNC23 ();
  FUNC8 ();
  FUNC9 (myname);

#ifdef USE_EMULATIONS
  select_emulation_mode (argc, argv);
#endif

  FUNC2 (1);
  /* Call parse_args before any of the init/begin functions
     so that switches like --hash-size can be honored.  */
  FUNC31 (&argc, &argv);
  FUNC41 ();
  FUNC18 ();
  FUNC39 ();
  FUNC34 ();
  FUNC24 ();
  FUNC17 ();

#ifndef OBJ_VMS /* Does its own file handling.  */
  /* It has to be called after dump_statistics ().  */
  FUNC48 (close_output_file);
#endif

  if (flag_print_statistics)
    FUNC48 (dump_statistics);

  macro_strip_at = 0;
#ifdef TC_I960
  macro_strip_at = flag_mri;
#endif

  FUNC28 (flag_macro_alternate, flag_mri, macro_strip_at, macro_expr);

  FUNC2 (1);

  FUNC30 (out_file_name);
  FUNC7 (stdoutput != 0);

#ifdef tc_init_after_args
  tc_init_after_args ();
#endif

  FUNC26 ();

  /* Now that we have fully initialized, and have created the output
     file, define any symbols requested by --defsym command line
     arguments.  */
  while (defsyms != NULL)
    {
      symbolS *sym;
      struct defsym_list *next;

      sym = FUNC42 (defsyms->name, absolute_section, defsyms->value,
			&zero_address_frag);
      /* Make symbols defined on the command line volatile, so that they
	 can be redefined inside a source file.  This makes this assembler's
	 behaviour compatible with earlier versions, but it may not be
	 completely intuitive.  */
      FUNC4 (sym);
      FUNC43 (sym);
      next = defsyms->next;
      FUNC19 (defsyms);
      defsyms = next;
    }

  FUNC2 (1);

  /* Assemble it.  */
  FUNC32 (argc, argv);

  FUNC13 (-1);

#ifdef md_end
  md_end ();
#endif

#ifdef OBJ_ELF
  if (IS_ELF)
    create_obj_attrs_section ();
#endif

#if defined OBJ_ELF || defined OBJ_MAYBE_ELF
  if ((flag_execstack || flag_noexecstack)
      && OUTPUT_FLAVOR == bfd_target_elf_flavour)
    {
      segT gnustack;

      gnustack = subseg_new (".note.GNU-stack", 0);
      bfd_set_section_flags (stdoutput, gnustack,
			     SEC_READONLY | (flag_execstack ? SEC_CODE : 0));
                                                                             
    }
#endif

  /* If we've been collecting dwarf2 .debug_line info, either for
     assembly debugging or on behalf of the compiler, emit it now.  */
  FUNC15 ();

  /* If we constructed dwarf2 .eh_frame info, either via .cfi 
     directives from the user or by the backend, emit it now.  */
  FUNC12 ();

  if (FUNC35 ()
      && (flag_always_generate_output || FUNC21 () == 0))
    keep_it = 1;
  else
    keep_it = 0;

  /* This used to be done at the start of write_object_file in
     write.c, but that caused problems when doing listings when
     keep_it was zero.  This could probably be moved above md_end, but
     I didn't want to risk the change.  */
  FUNC40 ();

  if (keep_it)
    FUNC47 ();

#ifndef NO_LISTING
  FUNC27 (listing_filename);
#endif

  if (flag_fatal_warnings && FUNC22 () > 0 && FUNC21 () == 0)
    FUNC6 (FUNC5("%d warnings, treating warnings as errors"), FUNC22 ());

  if (FUNC21 () > 0 && ! flag_always_generate_output)
    keep_it = 0;

  if (!keep_it)
    FUNC46 (out_file_name);

  FUNC25 ();

  FUNC0 (myname);

  /* Use xexit instead of return, because under VMS environments they
     may not place the same interpretation on the value given.  */
  if (FUNC21 () > 0)
    FUNC49 (EXIT_FAILURE);

  /* Only generate dependency file if assembler was successful.  */
  FUNC33 ();

  FUNC49 (EXIT_SUCCESS);
}