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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3 (char *file)
{
  static int identified;

  if (identified)
    return;
  identified++;

  if (!file)
    {
      unsigned int x;
      FUNC1 (&file, &x);
    }

  if (file)
    FUNC2 (stderr, "%s: ", file);
  FUNC2 (stderr, "%s", FUNC0("Assembler messages:\n"));
}