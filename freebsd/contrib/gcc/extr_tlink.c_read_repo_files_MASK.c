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
typedef  int /*<<< orphan*/  file ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/ * file_stack ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * symbol_stack ; 

__attribute__((used)) static int
FUNC5 (char **object_lst)
{
  char **object = object_lst;

  for (; *object; object++)
    {
      const char *p;
      file *f;

      /* Don't bother trying for ld flags.  */
      if (*object[0] == '-')
	continue;

      p = FUNC2 (*object, ".rpo");

      if (! FUNC0 (p))
	continue;

      f = FUNC1 (p);

      FUNC3 (f);
    }

  if (file_stack != NULL && ! FUNC4 ())
    return 0;

  return (symbol_stack != NULL);
}