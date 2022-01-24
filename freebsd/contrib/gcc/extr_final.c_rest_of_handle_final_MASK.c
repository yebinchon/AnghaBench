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
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {int /*<<< orphan*/  (* function_decl ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SYMBOL_REF ; 
 int /*<<< orphan*/  TV_SYMOUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  current_function_decl ; 
 TYPE_1__* debug_hooks ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  optimize ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  quiet_flag ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int user_defined_section_attribute ; 

__attribute__((used)) static unsigned int
FUNC18 (void)
{
  rtx x;
  const char *fnname;

  /* Get the function's name, as described by its RTL.  This may be
     different from the DECL_NAME name used in the source file.  */

  x = FUNC0 (current_function_decl);
  FUNC12 (FUNC2 (x));
  x = FUNC3 (x, 0);
  FUNC12 (FUNC1 (x) == SYMBOL_REF);
  fnname = FUNC4 (x, 0);

  FUNC6 (current_function_decl, fnname);
  FUNC10 (FUNC13 (), asm_out_file, optimize);
  FUNC8 (FUNC13 (), asm_out_file, optimize);
  FUNC9 ();

#ifdef TARGET_UNWIND_INFO
  /* ??? The IA-64 ".handlerdata" directive must be issued before
     the ".endp" directive that closes the procedure descriptor.  */
  output_function_exception_table ();
#endif

  FUNC5 (current_function_decl, fnname);

#ifndef TARGET_UNWIND_INFO
  /* Otherwise, it feels unclean to switch sections in the middle.  */
  FUNC14 ();
#endif

  user_defined_section_attribute = false;

  if (! quiet_flag)
    FUNC7 (asm_out_file);

  /* Release all memory allocated by flow.  */
  FUNC11 ();

  /* Write DBX symbols if requested.  */

  /* Note that for those inline functions where we don't initially
     know for certain that we will be generating an out-of-line copy,
     the first invocation of this routine (rest_of_compilation) will
     skip over this code by doing a `goto exit_rest_of_compilation;'.
     Later on, wrapup_global_declarations will (indirectly) call
     rest_of_compilation again for those inline functions that need
     to have out-of-line copies generated.  During that call, we
     *will* be routed past here.  */

  FUNC17 (TV_SYMOUT);
  (*debug_hooks->function_decl) (current_function_decl);
  FUNC16 (TV_SYMOUT);
  return 0;
}