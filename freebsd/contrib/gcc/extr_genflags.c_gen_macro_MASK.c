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
 char FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC5 (const char *name, int real, int expect)
{
  int i;

  FUNC2 (real <= expect);
  FUNC2 (real);

  /* #define GEN_CALL(A, B, C, D) gen_call((A), (B)) */
  FUNC1 ("#define GEN_", stdout);
  for (i = 0; name[i]; i++)
    FUNC4 (FUNC0 (name[i]));

  FUNC4('(');
  for (i = 0; i < expect - 1; i++)
    FUNC3 ("%c, ", i + 'A');
  FUNC3 ("%c) gen_%s (", i + 'A', name);

  for (i = 0; i < real - 1; i++)
    FUNC3 ("(%c), ", i + 'A');
  FUNC3 ("(%c))\n", i + 'A');
}