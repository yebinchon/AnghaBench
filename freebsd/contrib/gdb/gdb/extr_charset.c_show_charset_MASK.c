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
 scalar_t__ current_host_charset ; 
 scalar_t__ current_target_charset ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3 (char *arg, int from_tty)
{
  if (current_host_charset == current_target_charset)
    {
      FUNC1 ("The current host and target character set is `%s'.\n",
                       FUNC0 ());
    }
  else
    {
      FUNC1 ("The current host character set is `%s'.\n",
                       FUNC0 ());
      FUNC1 ("The current target character set is `%s'.\n",
                       FUNC2 ());
    }
}