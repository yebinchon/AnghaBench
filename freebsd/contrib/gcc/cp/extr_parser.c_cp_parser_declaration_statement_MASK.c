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
typedef  int /*<<< orphan*/  cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  declarator_obstack ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static void
FUNC4 (cp_parser* parser)
{
  void *p;

  /* Get the high-water mark for the DECLARATOR_OBSTACK.  */
  p = FUNC2 (&declarator_obstack, 0);

 /* Parse the block-declaration.  */
  FUNC0 (parser, /*statement_p=*/true);

  /* Free any declarators allocated.  */
  FUNC3 (&declarator_obstack, p);

  /* Finish off the statement.  */
  FUNC1 ();
}