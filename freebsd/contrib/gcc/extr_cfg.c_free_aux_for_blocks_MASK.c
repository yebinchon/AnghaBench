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

/* Variables and functions */
 int /*<<< orphan*/  block_aux_obstack ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * first_block_aux_obj ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3 (void)
{
  FUNC1 (first_block_aux_obj);
  FUNC2 (&block_aux_obstack, first_block_aux_obj);
  first_block_aux_obj = NULL;

  FUNC0 ();
}