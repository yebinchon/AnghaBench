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
struct TYPE_2__ {int /*<<< orphan*/  (* finish ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  asm_file_name ; 
 scalar_t__ asm_out_file ; 
 scalar_t__ aux_info_file ; 
 int /*<<< orphan*/  aux_info_file_name ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ errorcount ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ flag_gen_aux_info ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_1__ lang_hooks ; 
 scalar_t__ mem_report ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (void)
{
  /* Close the dump files.  */
  if (flag_gen_aux_info)
    {
      FUNC6 (aux_info_file);
      if (errorcount)
	FUNC13 (aux_info_file_name);
    }

  /* Close non-debugging input and output files.  Take special care to note
     whether fclose returns an error, since the pages might still be on the
     buffer chain while the file is open.  */

  if (asm_out_file)
    {
      if (FUNC7 (asm_out_file) != 0)
	FUNC5 ("error writing to %s: %m", asm_file_name);
      if (FUNC6 (asm_out_file) != 0)
	FUNC5 ("error closing %s: %m", asm_file_name);
    }

  FUNC8 ();

  if (mem_report)
    {
      FUNC10 ();
      FUNC11 ();
      FUNC3 ();
      FUNC2 ();
      FUNC4 ();
      FUNC0 ();
      FUNC1 ();
    }

  /* Free up memory for the benefit of leak detectors.  */
  FUNC9 ();

  /* Language-specific end of compilation actions.  */
  lang_hooks.finish ();
}