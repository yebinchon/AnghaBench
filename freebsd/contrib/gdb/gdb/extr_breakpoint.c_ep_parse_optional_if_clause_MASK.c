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
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static char *
FUNC3 (char **arg)
{
  char *cond_string;

  if (((*arg)[0] != 'i') || ((*arg)[1] != 'f') || !FUNC1 ((*arg)[2]))
    return NULL;

  /* Skip the "if" keyword. */
  (*arg) += 2;

  /* Skip any extra leading whitespace, and record the start of the
     condition string. */
  FUNC0 (arg);
  cond_string = *arg;

  /* Assume that the condition occupies the remainder of the arg string. */
  (*arg) += FUNC2 (cond_string);

  return cond_string;
}