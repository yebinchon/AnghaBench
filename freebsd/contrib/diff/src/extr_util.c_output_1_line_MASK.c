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
 int /*<<< orphan*/  expand_tabs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/ * outfile ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ *) ; 
 size_t tabsize ; 

void
FUNC4 (char const *base, char const *limit, char const *flag_format,
	       char const *line_flag)
{
  if (!expand_tabs)
    FUNC1 (base, sizeof (char), limit - base, outfile);
  else
    {
      register FILE *out = outfile;
      register unsigned char c;
      register char const *t = base;
      register size_t column = 0;
      size_t tab_size = tabsize;

      while (t < limit)
	switch ((c = *t++))
	  {
	  case '\t':
	    {
	      size_t spaces = tab_size - column % tab_size;
	      column += spaces;
	      do
		FUNC3 (' ', out);
	      while (--spaces);
	    }
	    break;

	  case '\r':
	    FUNC3 (c, out);
	    if (flag_format && t < limit && *t != '\n')
	      FUNC0 (out, flag_format, line_flag);
	    column = 0;
	    break;

	  case '\b':
	    if (column == 0)
	      continue;
	    column--;
	    FUNC3 (c, out);
	    break;

	  default:
	    column += FUNC2 (c) != 0;
	    FUNC3 (c, out);
	    break;
	  }
    }
}