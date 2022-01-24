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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static void
FUNC3 (FILE *infile, const char *string)
{
  const char *cp;
  int valid = 1;

  cp = string;
  while (*cp && FUNC1 (*cp))
    cp++;
  if (*cp == '-' || *cp == '+')
    cp++;
  if (*cp == 0)
    valid = 0;
  for (; *cp; cp++)
    if (! FUNC0 (*cp))
      valid = 0;
  if (!valid)
    FUNC2 (infile, "invalid decimal constant \"%s\"\n", string);
}