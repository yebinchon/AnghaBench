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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ processing_template_decl ; 

void
FUNC5 (tree compstmt)
{
  if (compstmt == NULL_TREE)
    return;

  /* Close the block.  */
  FUNC2 (compstmt);

  if (processing_template_decl)
    /* Do nothing now.  */;
  else if (FUNC0 (current_function_decl))
    FUNC3 ();
  else if (FUNC1 (current_function_decl))
    FUNC4 ();
}