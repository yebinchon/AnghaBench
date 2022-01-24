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
 int FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char const* version_string ; 

__attribute__((used)) static void
FUNC4 (void)
{
  /* The format of the version string, enforced below, is
     ([^0-9]*-)?[0-9]+[.][0-9]+([.][0-9]+)?([- ].*)?  */
  const char *q, *v = version_string;

  while (*v && !FUNC0 (*v))
    v++;
  FUNC3 (*v && (v <= version_string || v[-1] == '-'));

  q = v;
  while (FUNC0 (*v))
    v++;
  FUNC1 ("__GNUC__", q, v - q);
  if (FUNC2 ())
    FUNC1 ("__GNUG__", q, v - q);

  FUNC3 (*v == '.' && FUNC0 (v[1]));

  q = ++v;
  while (FUNC0 (*v))
    v++;
  FUNC1 ("__GNUC_MINOR__", q, v - q);

  if (*v == '.')
    {
      FUNC3 (FUNC0 (v[1]));
      q = ++v;
      while (FUNC0 (*v))
	v++;
      FUNC1 ("__GNUC_PATCHLEVEL__", q, v - q);
    }
  else
    FUNC1 ("__GNUC_PATCHLEVEL__", "0", 1);

  FUNC3 (!*v || *v == ' ' || *v == '-');
}