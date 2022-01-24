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
 int /*<<< orphan*/  CLEANUP_EXPENSIVE ; 
 int /*<<< orphan*/  PROP_DEATH_NOTES ; 
 int /*<<< orphan*/  UPDATE_LIFE_GLOBAL_RM_NOTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int no_new_pseudos ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC7 (void)
{
  int no_new_pseudos_bcp = no_new_pseudos;

  no_new_pseudos = 0;
  FUNC5 ();
  no_new_pseudos = no_new_pseudos_bcp;
  
  FUNC1 (FUNC2 (), FUNC3 ());
  FUNC6 (UPDATE_LIFE_GLOBAL_RM_NOTES, 
  				    (PROP_DEATH_NOTES));
  FUNC0 (CLEANUP_EXPENSIVE);
  FUNC4 (FUNC2 (), FUNC3 ());

  return 0;
}