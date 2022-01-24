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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const* const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6 (tree decl)
{
#if defined (ASM_WEAKEN_DECL) || defined (ASM_WEAKEN_LABEL)
  const char *const name = IDENTIFIER_POINTER (DECL_ASSEMBLER_NAME (decl));
#endif

  if (! FUNC4 (decl))
    return;

#ifdef ASM_WEAKEN_DECL
  ASM_WEAKEN_DECL (asm_out_file, decl, name, NULL);
#else
#ifdef ASM_WEAKEN_LABEL
  ASM_WEAKEN_LABEL (asm_out_file, name);
#else
#ifdef ASM_OUTPUT_WEAK_ALIAS
  {
    static bool warn_once = 0;
    if (! warn_once)
      {
	warning (0, "only weak aliases are supported in this configuration");
	warn_once = 1;
      }
    return;
  }
#endif
#endif
#endif
}