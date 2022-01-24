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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int
FUNC2 (FILE *file, int pos, int max,
		     const char *indent, const char *sep, const char *term,
		     const char *type, const char *name)
{
  /* The ultrix fprintf returns 0 on success, so compute the result we want
     here since we need it for the following test.  */
  int len = FUNC1 (sep) + FUNC1 (type) + FUNC1 (name);

  if (pos != 0
      && pos + len > max)
    {
      FUNC0 (file, "%s", term);
      pos = 0;
    }
  if (pos == 0)
    {
      FUNC0 (file, "%s", indent);
      pos = FUNC1 (indent);
    }
  FUNC0 (file, "%s%s%s", sep, type, name);
  pos += len;
  return pos;
}