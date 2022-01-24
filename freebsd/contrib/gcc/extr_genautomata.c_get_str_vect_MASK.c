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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  irp ; 
 int FUNC1 (char const*,int,int) ; 
 char* FUNC2 (char const**,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char **
FUNC6 (const char *str, int *els_num, int sep, int paren_p)
{
  int i;
  char **vect;
  const char **pstr;
  char *trail;

  *els_num = FUNC1 (str, sep, paren_p);
  if (*els_num <= 0)
    return NULL;
  FUNC4 (&irp, sizeof (char *) * (*els_num + 1));
  vect = (char **) FUNC3 (&irp);
  (void) FUNC5 (&irp);
  pstr = &str;
  for (i = 0; i < *els_num; i++)
    vect [i] = FUNC2 (pstr, sep, paren_p);
  trail = FUNC2 (pstr, sep, paren_p);
  FUNC0 (!trail);
  vect [i] = NULL;
  return vect;
}