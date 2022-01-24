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
 int EINTR ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pname ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (int desc, void *ptr, int len, const char *out_fname)
{
  while (len > 0) {
    int written = FUNC2 (desc, ptr, len);
    if (written < 0)
      {
	int errno_val = errno;
#ifdef EINTR
	if (errno_val == EINTR)
	  continue;
#endif
	FUNC0 ("%s: error writing file '%s': %s\n",
		pname, FUNC1 (NULL, out_fname), FUNC3 (errno_val));
	return;
      }
    /* Arithmetic on void pointers is a gcc extension.  */
    ptr = (char *) ptr + written;
    len -= written;
  }
}