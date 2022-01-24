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
 int /*<<< orphan*/  LOCK ; 
 int /*<<< orphan*/  UNLOCK ; 
 char** __environ ; 
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t const) ; 

void
FUNC2 (const char *name)
{
  const size_t len = FUNC0 (name);
  char **ep;

  LOCK;

  for (ep = __environ; *ep; ++ep)
    if (!FUNC1 (*ep, name, len) && (*ep)[len] == '=')
      {
	/* Found it.  Remove this pointer by moving later ones back.  */
	char **dp = ep;
	do
	  dp[0] = dp[1];
	while (*dp++);
	/* Continue the loop in case NAME appears again.  */
      }

  UNLOCK;
}