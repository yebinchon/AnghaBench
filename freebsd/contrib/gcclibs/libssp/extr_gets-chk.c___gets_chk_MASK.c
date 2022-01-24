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
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (size_t) ; 
 char* FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  stdin ; 
 size_t FUNC7 (char*) ; 

char *
FUNC8 (char *s, size_t slen)
{
  char *ret, *buf;

  if (slen >= (size_t) INT_MAX)
    return FUNC4 (s);

  if (slen <= 8192)
    buf = FUNC1 (slen + 1);
  else
    buf = FUNC5 (slen + 1);
  if (buf == NULL)
    return FUNC4 (s);

  ret = FUNC2 (buf, (int) (slen + 1), stdin);
  if (ret != NULL)
    {
      size_t len = FUNC7 (buf);
      if (len > 0 && buf[len - 1] == '\n')
        --len;
      if (len == slen)
        FUNC0 ();
      FUNC6 (s, buf, len);
      s[len] = '\0';
      ret = s;
    }

  if (slen > 8192)
    FUNC3 (buf);
  return ret;
}