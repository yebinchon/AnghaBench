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
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ STRING_CST ; 
 scalar_t__ TARGET_ABICALLS ; 
 scalar_t__ TARGET_EMBEDDED_DATA ; 
 scalar_t__ TARGET_EXPLICIT_RELOCS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ mips_section_threshold ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

__attribute__((used)) static bool
FUNC11 (tree decl)
{
  HOST_WIDE_INT size;

  if (FUNC3 (decl) == STRING_CST || FUNC3 (decl) == FUNCTION_DECL)
    return false;

  /* We don't yet generate small-data references for -mabicalls.  See related
     -G handling in override_options.  */
  if (TARGET_ABICALLS)
    return false;

  if (FUNC3 (decl) == VAR_DECL && FUNC2 (decl) != 0)
    {
      const char *name;

      /* Reject anything that isn't in a known small-data section.  */
      name = FUNC7 (FUNC2 (decl));
      if (FUNC10 (name, ".sdata") != 0 && FUNC10 (name, ".sbss") != 0)
	return false;

      /* If a symbol is defined externally, the assembler will use the
	 usual -G rules when deciding how to implement macros.  */
      if (TARGET_EXPLICIT_RELOCS || !FUNC0 (decl))
	return true;
    }
  else if (TARGET_EMBEDDED_DATA)
    {
      /* Don't put constants into the small data section: we want them
	 to be in ROM rather than RAM.  */
      if (FUNC3 (decl) != VAR_DECL)
	return false;

      if (FUNC5 (decl)
	  && !FUNC6 (decl)
	  && (!FUNC1 (decl) || FUNC4 (FUNC1 (decl))))
	return false;
    }

  size = FUNC9 (FUNC8 (decl));
  return (size > 0 && size <= mips_section_threshold);
}