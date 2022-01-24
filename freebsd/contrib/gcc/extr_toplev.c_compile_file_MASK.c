#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  (* finish ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  (* final_write_globals ) () ;} ;
struct TYPE_9__ {TYPE_2__ decls; int /*<<< orphan*/  (* clear_binding_stack ) () ;int /*<<< orphan*/  (* parse_file ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* file_end ) () ;} ;
struct TYPE_8__ {TYPE_1__ asm_out; } ;

/* Variables and functions */
 char* IDENT_ASM_OP ; 
 int /*<<< orphan*/  TV_PARSE ; 
 int /*<<< orphan*/  TV_SYMOUT ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  aux_base_name ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_5__* debug_hooks ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ errorcount ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ flag_mudflap ; 
 int /*<<< orphan*/  flag_no_ident ; 
 scalar_t__ flag_syntax_only ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_4__ lang_hooks ; 
 int /*<<< orphan*/  main_input_filename ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  set_yydebug ; 
 scalar_t__ sorrycount ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 TYPE_3__ targetm ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 char* version_string ; 
 int /*<<< orphan*/  FUNC21 () ; 

__attribute__((used)) static void
FUNC22 (void)
{
  /* Initialize yet another pass.  */

  FUNC8 ();
  FUNC9 (main_input_filename);
  FUNC2 (aux_base_name);

  FUNC20 (TV_PARSE);

  /* Call the parser, which parses the entire file (calling
     rest_of_compilation for each function).  */
  lang_hooks.parse_file (set_yydebug);

  /* In case there were missing block closers,
     get us back to the global binding level.  */
  lang_hooks.clear_binding_stack ();

  /* Compilation is now finished except for writing
     what's left of the symbol table output.  */
  FUNC19 (TV_PARSE);

  if (flag_syntax_only || errorcount || sorrycount)
    return;

  lang_hooks.decls.final_write_globals ();
  FUNC0 ();
  FUNC6 ();

  /* This must occur after the loop to output deferred functions.
     Else the coverage initializer would not be emitted if all the
     functions in this compilation unit were deferred.  */
  FUNC1 ();

  /* Likewise for mudflap static object registrations.  */
  if (flag_mudflap)
    FUNC10 ();

  FUNC12 ();
  FUNC11 ();

  /* Write out any pending weak symbol declarations.  */

  FUNC21 ();

  /* Do dbx symbols.  */
  FUNC20 (TV_SYMOUT);

#if defined DWARF2_DEBUGGING_INFO || defined DWARF2_UNWIND_INFO
  if (dwarf2out_do_frame ())
    dwarf2out_frame_finish ();
#endif

  (*debug_hooks->finish) (main_input_filename);
  FUNC19 (TV_SYMOUT);

  /* Output some stuff at end of file if nec.  */

  FUNC3 ();

  /* Flush any pending external directives.  */
  FUNC13 ();

  /* Attach a special .ident directive to the end of the file to identify
     the version of GCC which compiled this code.  The format of the .ident
     string is patterned after the ones produced by native SVR4 compilers.  */
#ifdef IDENT_ASM_OP
  if (!flag_no_ident)
    fprintf (asm_out_file, "%s\"GCC: (GNU) %s\"\n",
	     IDENT_ASM_OP, version_string);
#endif

  /* This must be at the end.  Some target ports emit end of file directives
     into the assembly file here, and hence we can not output anything to the
     assembly file after this point.  */
  targetm.asm_out.file_end ();
}