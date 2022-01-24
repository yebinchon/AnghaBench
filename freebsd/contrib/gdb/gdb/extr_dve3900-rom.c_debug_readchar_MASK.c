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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4 (int hex)
{
  char buf[10];
  int c = FUNC0 ();

  if (remote_debug > 0)
    {
      if (hex)
	FUNC2 (buf, "[%02x]", c & 0xff);
      else if (c == '\0')
	FUNC3 (buf, "\\0");
      else
	{
	  buf[0] = c;
	  buf[1] = '\0';
	}
      FUNC1 ("Read -->", buf, "<--");
    }
  return c;
}