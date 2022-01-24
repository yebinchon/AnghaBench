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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  flag_mudflap_threads ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static unsigned int
FUNC7 (void)
{
  /* Don't instrument functions such as the synthetic constructor
     built during mudflap_finish_file.  */
  if (FUNC3 (current_function_decl) ||
      FUNC0 (current_function_decl))
    return 0;

  FUNC6 ();

  /* In multithreaded mode, don't cache the lookup cache parameters.  */
  if (! flag_mudflap_threads)
    FUNC1 ();

  FUNC4 ();

  if (! flag_mudflap_threads)
    FUNC2 ();

  FUNC5 (NULL);
  return 0;
}