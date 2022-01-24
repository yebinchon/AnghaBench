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
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sort_bfd ; 
 int /*<<< orphan*/  sort_dynamic ; 
 int /*<<< orphan*/  sort_x ; 
 int /*<<< orphan*/  sort_y ; 
 int FUNC4 (char const*,char const*) ; 
 int FUNC5 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC6 (const void *P_x, const void *P_y)
{
  asymbol *x, *y;
  const char *xn, *yn;

  x = FUNC3 (sort_bfd, sort_dynamic, P_x, sort_x);
  y = FUNC3 (sort_bfd, sort_dynamic, P_y, sort_y);
  if (x == NULL || y == NULL)
    FUNC1 (FUNC2 (sort_bfd));

  xn = FUNC0 (x);
  yn = FUNC0 (y);

  if (yn == NULL)
    return xn != NULL;
  if (xn == NULL)
    return -1;

#ifdef HAVE_STRCOLL
  /* Solaris 2.5 has a bug in strcoll.
     strcoll returns invalid values when confronted with empty strings.  */
  if (*yn == '\0')
    return *xn != '\0';
  if (*xn == '\0')
    return -1;

  return strcoll (xn, yn);
#else
  return FUNC4 (xn, yn);
#endif
}