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
 int MAX_ASCII_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

void
FUNC4 (FILE *stream, const unsigned char *p, int len)
{
  int i;
  int len_so_far = 0;

  FUNC2 ("\t.ascii\t\"", stream);

  for (i = 0; i < len; i++)
    {
      int c = p[i];

      if (len_so_far >= MAX_ASCII_LEN)
	{
	  FUNC2 ("\"\n\t.ascii\t\"", stream);
	  len_so_far = 0;
	}

      if (FUNC0 (c))
	{
	  if (c == '\\' || c == '\"')
	    {
	      FUNC3 ('\\', stream);
	      len_so_far++;
	    }
	  FUNC3 (c, stream);
	  len_so_far++;
	}
      else
	{
	  FUNC1 (stream, "\\%03o", c);
	  len_so_far += 4;
	}
    }

  FUNC2 ("\"\n", stream);
}