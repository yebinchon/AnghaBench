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
 int /*<<< orphan*/  PATH_SEPARATOR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (char *dirlist_ptr)
{
  char *p;

  while (1)
    {
      p = FUNC1 (dirlist_ptr, PATH_SEPARATOR);
      if (p != NULL)
	*p = '\0';
      if (*dirlist_ptr != '\0')
	FUNC0 (dirlist_ptr, TRUE);
      if (p == NULL)
	break;
      dirlist_ptr = p + 1;
    }
}