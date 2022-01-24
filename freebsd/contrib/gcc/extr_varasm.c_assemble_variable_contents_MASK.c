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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  last_assemble_variable_decl ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9 (tree decl, const char *name,
			    bool dont_output_data)
{
  /* Do any machine/system dependent processing of the object.  */
#ifdef ASM_DECLARE_OBJECT_NAME
  last_assemble_variable_decl = decl;
  ASM_DECLARE_OBJECT_NAME (asm_out_file, name, decl);
#else
  /* Standard thing is just output label for the object.  */
  FUNC1 (asm_out_file, name);
#endif /* ASM_DECLARE_OBJECT_NAME */

  if (!dont_output_data)
    {
      if (FUNC3 (decl)
	  && FUNC3 (decl) != error_mark_node
	  && !FUNC6 (FUNC3 (decl)))
	/* Output the actual data.  */
	FUNC7 (FUNC3 (decl),
			 FUNC8 (FUNC4 (decl), 1),
			 FUNC2 (decl));
      else
	/* Leave space for it.  */
	FUNC5 (FUNC8 (FUNC4 (decl), 1));
    }
}