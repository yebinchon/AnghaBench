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
 int CLEANUP_EXPENSIVE ; 
 int CLEANUP_LOG_LINKS ; 
 int CLEANUP_THREADING ; 
 int CLEANUP_UPDATE_LIFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PROP_DEATH_NOTES ; 
 int /*<<< orphan*/  PROP_FINAL ; 
 int PROP_LOG_LINKS ; 
 int PROP_REG_INFO ; 
 int /*<<< orphan*/  UPDATE_LIFE_GLOBAL_RM_NOTES ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  current_function_decl ; 
 scalar_t__ extra_warnings ; 
 scalar_t__ flag_thread_jumps ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int no_new_pseudos ; 
 scalar_t__ optimize ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int
FUNC9 (void)
{
  FUNC5 ();

  FUNC4 (PROP_FINAL);
  if (optimize)
    FUNC2 (CLEANUP_EXPENSIVE | CLEANUP_UPDATE_LIFE | CLEANUP_LOG_LINKS
                 | (flag_thread_jumps ? CLEANUP_THREADING : 0));

  if (extra_warnings)
    {
      FUNC7 (FUNC0 (current_function_decl));
      FUNC6 ();
    }

  if (optimize)
    {
      if (FUNC3 ())
        {
          /* Insns were inserted, and possibly pseudos created, so
             things might look a bit different.  */
          FUNC1 ();
          FUNC8 (NULL, UPDATE_LIFE_GLOBAL_RM_NOTES,
                            PROP_LOG_LINKS | PROP_REG_INFO | PROP_DEATH_NOTES);
        }
    }

  no_new_pseudos = 1;
  return 0;
}