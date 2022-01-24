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
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd *
FUNC6 (char *filename, const char *target, char *mode)
{
  bfd *obfd;

  if (*mode == 'w')	/* Write: create new file */
    {
      obfd = FUNC2 (filename, target);
      if (obfd == NULL)
	FUNC4 ("Failed to open %s: %s.", filename, 
	       FUNC0 (FUNC1 ()));
      FUNC5 (obfd);
      if (!FUNC3 (obfd, bfd_object))
	FUNC4 ("bfd_openw_with_cleanup: %s.", FUNC0 (FUNC1 ()));
    }
  else if (*mode == 'a')	/* Append to existing file */
    {	/* FIXME -- doesn't work... */
      FUNC4 ("bfd_openw does not work with append.");
    }
  else
    FUNC4 ("bfd_openw_with_cleanup: unknown mode %s.", mode);

  return obfd;
}