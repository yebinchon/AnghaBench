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
 int /*<<< orphan*/  BCS_FN_BODY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ processing_template_decl ; 

tree
FUNC5 (void)
{
  tree stmt;

  if (! FUNC1 (current_function_decl))
    return NULL_TREE;

  if (processing_template_decl)
    /* Do nothing now.  */;
  else
    /* Always keep the BLOCK node associated with the outermost pair of
       curly braces of a function.  These are needed for correct
       operation of dwarfout.c.  */
    FUNC4 (true);

  stmt = FUNC2 (BCS_FN_BODY);

  if (processing_template_decl)
    /* Do nothing now.  */;
  else if (FUNC0 (current_function_decl))
    FUNC3 ();

  return stmt;
}