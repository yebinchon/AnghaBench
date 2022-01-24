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
typedef  int /*<<< orphan*/  tree ;
struct cgraph_node {int /*<<< orphan*/  decl; struct cgraph_node* next_nested; struct cgraph_node* nested; } ;
struct TYPE_2__ {char* (* decl_printable_name ) (int /*<<< orphan*/ ,int) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int TDF_RAW ; 
 int TDF_SLIM ; 
 int /*<<< orphan*/  TDI_generic ; 
 int /*<<< orphan*/  TDI_original ; 
 struct cgraph_node* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__ lang_hooks ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ ,int) ; 
 char* FUNC13 (int /*<<< orphan*/ ,int) ; 

void
FUNC14 (tree fndecl)
{
  FILE *dump_orig;
  int local_dump_flags;
  struct cgraph_node *cgn;

  /* Dump the C-specific tree IR.  */
  dump_orig = FUNC4 (TDI_original, &local_dump_flags);
  if (dump_orig)
    {
      FUNC9 (dump_orig, "\n;; Function %s",
	       lang_hooks.decl_printable_name (fndecl, 2));
      FUNC9 (dump_orig, " (%s)\n",
	       FUNC2 (FUNC0 (fndecl)));
      FUNC9 (dump_orig, ";; enabled by -%s\n", FUNC6 (TDI_original));
      FUNC9 (dump_orig, "\n");

      if (local_dump_flags & TDF_RAW)
	FUNC8 (FUNC1 (fndecl),
		   TDF_SLIM | local_dump_flags, dump_orig);
      else
	FUNC11 (dump_orig, FUNC1 (fndecl));
      FUNC9 (dump_orig, "\n");

      FUNC5 (TDI_original, dump_orig);
    }

  /* Go ahead and gimplify for now.  */
  FUNC10 (fndecl);

  /* Dump the genericized tree IR.  */
  FUNC7 (TDI_generic, fndecl);

  /* Genericize all nested functions now.  We do things in this order so
     that items like VLA sizes are expanded properly in the context of
     the correct function.  */
  cgn = FUNC3 (fndecl);
  for (cgn = cgn->nested; cgn ; cgn = cgn->next_nested)
    FUNC14 (cgn->decl);
}