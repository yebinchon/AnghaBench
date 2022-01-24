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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*,long) ; 
 size_t FUNC3 (char*) ; 

void
FUNC4 (char *p, size_t n, const char *fmt, long val)
{
  static char buf[20];
  size_t len;
  FUNC2 (buf, sizeof (buf), fmt, val);
  len = FUNC3 (buf);
  if (len < n)
    {
      FUNC0 (p, buf, len);
      FUNC1 (p + len, ' ', n - len);
    }
  else
    FUNC0 (p, buf, n);
}