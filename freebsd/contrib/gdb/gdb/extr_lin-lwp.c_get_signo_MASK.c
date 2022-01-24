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
struct minimal_symbol {int dummy; } ;
typedef  int /*<<< orphan*/  signo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct minimal_symbol*) ; 
 struct minimal_symbol* FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC3 (const char *name)
{
  struct minimal_symbol *ms;
  int signo;

  ms = FUNC1 (name, NULL, NULL);
  if (ms == NULL)
    return 0;

  if (FUNC2 (FUNC0 (ms), (char *) &signo,
			  sizeof (signo)) != 0)
    return 0;

  return signo;
}