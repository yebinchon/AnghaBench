#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int flagword ;
struct TYPE_2__ {int bss; } ;

/* Variables and functions */
 char* BFD_ABS_SECTION_NAME ; 
 char* BFD_UND_SECTION_NAME ; 
 char* BSS_SECTION_NAME ; 
 char* DATA_SECTION_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SEC_ALLOC ; 
 int SEC_CODE ; 
 int SEC_DATA ; 
 int SEC_LOAD ; 
 int SEC_READONLY ; 
 int SEC_RELOC ; 
 char* TEXT_SECTION_NAME ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 void* bss_section ; 
 void* data_section ; 
 void* expr_section ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ need_pass_2 ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 void* reg_section ; 
 TYPE_1__* FUNC7 (void*) ; 
 int /*<<< orphan*/  stdoutput ; 
 void* FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ) ; 
 void* text_section ; 

__attribute__((used)) static void
FUNC10 (int argc, char ** argv)
{
  int saw_a_file = 0;
  flagword applicable;

  need_pass_2 = 0;

  /* Create the standard sections, and those the assembler uses
     internally.  */
  text_section = FUNC8 (TEXT_SECTION_NAME, 0);
  data_section = FUNC8 (DATA_SECTION_NAME, 0);
  bss_section = FUNC8 (BSS_SECTION_NAME, 0);
  /* @@ FIXME -- we're setting the RELOC flag so that sections are assumed
     to have relocs, otherwise we don't find out in time.  */
  applicable = FUNC1 (stdoutput);
  FUNC2 (stdoutput, text_section,
			 applicable & (SEC_ALLOC | SEC_LOAD | SEC_RELOC
				       | SEC_CODE | SEC_READONLY));
  FUNC2 (stdoutput, data_section,
			 applicable & (SEC_ALLOC | SEC_LOAD | SEC_RELOC
				       | SEC_DATA));
  FUNC2 (stdoutput, bss_section, applicable & SEC_ALLOC);
  FUNC7 (bss_section)->bss = 1;
  FUNC8 (BFD_ABS_SECTION_NAME, 0);
  FUNC8 (BFD_UND_SECTION_NAME, 0);
  reg_section = FUNC8 ("*GAS `reg' section*", 0);
  expr_section = FUNC8 ("*GAS `expr' section*", 0);

  FUNC9 (text_section, 0);

  /* This may add symbol table entries, which requires having an open BFD,
     and sections already created.  */
  FUNC4 ();

#ifdef USING_CGEN
  gas_cgen_begin ();
#endif
#ifdef obj_begin
  obj_begin ();
#endif

  /* Skip argv[0].  */
  argv++;
  argc--;

  while (argc--)
    {
      if (*argv)
	{			/* Is it a file-name argument?  */
	  FUNC0 (1);
	  saw_a_file++;
	  /* argv->"" if stdin desired, else->filename.  */
	  FUNC6 (*argv);
	}
      argv++;			/* Completed that argv.  */
    }
  if (!saw_a_file)
    FUNC6 ("");
}