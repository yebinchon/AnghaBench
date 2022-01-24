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
 int FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 

void
FUNC3 (FILE *stream, const char *name)
{
  int skip;
  int verbatim = 0;

  while ((skip = FUNC0 (* name)))
    {
      verbatim |= (*name == '*');
      name += skip;
    }

  if (verbatim)
    FUNC2 (name, stream);
  else
    FUNC1 (stream, "%U%s", name);
}