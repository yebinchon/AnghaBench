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
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6 (int errnum)
{
  char const *s;

#if defined HAVE_STRERROR_R || _LIBC
  char errbuf[1024];
# if STRERROR_R_CHAR_P || _LIBC
  s = __strerror_r (errnum, errbuf, sizeof errbuf);
# else
  if (__strerror_r (errnum, errbuf, sizeof errbuf) == 0)
    s = errbuf;
  else
    s = 0;
# endif
#else
  s = FUNC5 (errnum);
#endif

#if !_LIBC
  if (! s)
    s = FUNC0("Unknown system error");
#endif

#if _LIBC
  if (_IO_fwide (stderr, 0) > 0)
    {
      __fwprintf (stderr, L": %s", s);
      return;
    }
#endif

  FUNC4 (stderr, ": %s", s);
}