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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (scalar_t__) ; 

__attribute__((used)) static int
FUNC5 (char *first, char *second)
{
  char *copy1;
  char *copy2;
  int result;

  copy1 = FUNC4 (FUNC3 (first) + 1);
  copy2 = FUNC4 (FUNC3 (second) + 1);

  /* Convert the names to lower case.  */
  FUNC2 (copy1, first);
  FUNC2 (copy2, second);

  /* Remove size and endian strings from the name.  */
  FUNC1 (copy1, "big");
  FUNC1 (copy1, "little");
  FUNC1 (copy2, "big");
  FUNC1 (copy2, "little");

  /* Return a value based on how many characters match,
     starting from the beginning.   If both strings are
     the same then return 10 * their length.  */
  for (result = 0; copy1[result] == copy2[result]; result++)
    if (copy1[result] == 0)
      {
	result *= 10;
	break;
      }

  FUNC0 (copy1);
  FUNC0 (copy2);

  return result;
}