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
 int PROP_DEATH_NOTES ; 
 int PROP_LOG_LINKS ; 
 int PROP_REG_INFO ; 
 int /*<<< orphan*/  UPDATE_LIFE_GLOBAL_RM_NOTES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int no_new_pseudos ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int
FUNC3 (void)
{
  no_new_pseudos = 0;
  FUNC1 ();
  FUNC0 ();
  FUNC2 (NULL, UPDATE_LIFE_GLOBAL_RM_NOTES,
		    PROP_LOG_LINKS | PROP_REG_INFO | PROP_DEATH_NOTES);
  no_new_pseudos = 1;
  return 0;
}