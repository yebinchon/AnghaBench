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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const,...) ; 

__attribute__((used)) static void
FUNC3 (int line, FILE *e, const char *str)
{
  const char *p;
  int c;
  char buf[1000];

  p = str;
  while (1)
    {
      c = FUNC1 (e);

      if (*p == '\0')
	{
	  if (c != '\n')
	    {
	      FUNC2 (buf, sizeof buf, "got '%c' when expecting newline", c);
	      FUNC0 (line, buf, 0);
	    }
	  c = FUNC1 (e);
	  if (c != EOF)
	    {
	      FUNC2 (buf, sizeof buf, "got '%c' when expecting EOF", c);
	      FUNC0 (line, buf, 0);
	    }
	  return;
	}

      if (c != *p)
	{
	  FUNC2 (buf, sizeof buf, "expected '%c', got '%c'", *p, c);
	  FUNC0 (line, buf, 0);
	}

      ++p;
    }
}