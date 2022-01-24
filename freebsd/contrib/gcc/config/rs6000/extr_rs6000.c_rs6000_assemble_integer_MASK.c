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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ ABI_AIX ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ DEFAULT_ABI ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELOCATABLE_NEEDS_FIXUP ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ TARGET_RELOCATABLE ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  fixuplabelno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ in_section ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ text_section ; 
 scalar_t__ toc_section ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC11 (rtx x, unsigned int size, int aligned_p)
{
#ifdef RELOCATABLE_NEEDS_FIXUP
  /* Special handling for SI values.  */
  if (RELOCATABLE_NEEDS_FIXUP && size == 4 && aligned_p)
    {
      static int recurse = 0;

      /* For -mrelocatable, we mark all addresses that need to be fixed up
	 in the .fixup section.  */
      if (TARGET_RELOCATABLE
	  && in_section != toc_section
	  && in_section != text_section
	  && !unlikely_text_section_p (in_section)
	  && !recurse
	  && GET_CODE (x) != CONST_INT
	  && GET_CODE (x) != CONST_DOUBLE
	  && CONSTANT_P (x))
	{
	  char buf[256];

	  recurse = 1;
	  ASM_GENERATE_INTERNAL_LABEL (buf, "LCP", fixuplabelno);
	  fixuplabelno++;
	  ASM_OUTPUT_LABEL (asm_out_file, buf);
	  fprintf (asm_out_file, "\t.long\t(");
	  output_addr_const (asm_out_file, x);
	  fprintf (asm_out_file, ")@fixup\n");
	  fprintf (asm_out_file, "\t.section\t\".fixup\",\"aw\"\n");
	  ASM_OUTPUT_ALIGN (asm_out_file, 2);
	  fprintf (asm_out_file, "\t.long\t");
	  assemble_name (asm_out_file, buf);
	  fprintf (asm_out_file, "\n\t.previous\n");
	  recurse = 0;
	  return true;
	}
      /* Remove initial .'s to turn a -mcall-aixdesc function
	 address into the address of the descriptor, not the function
	 itself.  */
      else if (GET_CODE (x) == SYMBOL_REF
	       && XSTR (x, 0)[0] == '.'
	       && DEFAULT_ABI == ABI_AIX)
	{
	  const char *name = XSTR (x, 0);
	  while (*name == '.')
	    name++;

	  fprintf (asm_out_file, "\t.long\t%s\n", name);
	  return true;
	}
    }
#endif /* RELOCATABLE_NEEDS_FIXUP */
  return FUNC7 (x, size, aligned_p);
}