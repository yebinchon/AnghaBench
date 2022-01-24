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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPT_Wattributes ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void
FUNC5 (tree decl, int vis)
{
  static const char * const visibility_types[] = {
    NULL, "protected", "hidden", "internal"
  };

  const char *name, *type;

  name = FUNC1 (FUNC0 (decl));
  type = visibility_types[vis];

#ifdef HAVE_GAS_HIDDEN
  fprintf (asm_out_file, "\t.%s\t", type);
  assemble_name (asm_out_file, name);
  fprintf (asm_out_file, "\n");
#else
  FUNC4 (OPT_Wattributes, "visibility attribute not supported "
	   "in this configuration; ignored");
#endif
}