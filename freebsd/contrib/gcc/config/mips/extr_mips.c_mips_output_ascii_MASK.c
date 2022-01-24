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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

void
FUNC3 (FILE *stream, const char *string_param, size_t len,
		   const char *prefix)
{
  size_t i;
  int cur_pos = 17;
  register const unsigned char *string =
    (const unsigned char *)string_param;

  FUNC1 (stream, "%s\"", prefix);
  for (i = 0; i < len; i++)
    {
      register int c = string[i];

      if (FUNC0 (c))
	{
	  if (c == '\\' || c == '\"')
	    {
	      FUNC2 ('\\', stream);
	      cur_pos++;
	    }
	  FUNC2 (c, stream);
	  cur_pos++;
	}
      else
	{
	  FUNC1 (stream, "\\%03o", c);
	  cur_pos += 4;
	}

      if (cur_pos > 72 && i+1 < len)
	{
	  cur_pos = 17;
	  FUNC1 (stream, "\"\n%s\"", prefix);
	}
    }
  FUNC1 (stream, "\"\n");
}