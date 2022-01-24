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
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/ * outfile ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 size_t tabsize ; 

__attribute__((used)) static size_t
FUNC3 (char const *const *line, size_t indent, size_t out_bound)
{
  FILE *out = outfile;
  register size_t in_position = 0;
  register size_t out_position = 0;
  register char const *text_pointer = line[0];
  register char const *text_limit = line[1];

  while (text_pointer < text_limit)
    {
      register unsigned char c = *text_pointer++;

      switch (c)
	{
	case '\t':
	  {
	    size_t spaces = tabsize - in_position % tabsize;
	    if (in_position == out_position)
	      {
		size_t tabstop = out_position + spaces;
		if (expand_tabs)
		  {
		    if (out_bound < tabstop)
		      tabstop = out_bound;
		    for (;  out_position < tabstop;  out_position++)
		      FUNC1 (' ', out);
		  }
		else
		  if (tabstop < out_bound)
		    {
		      out_position = tabstop;
		      FUNC1 (c, out);
		    }
	      }
	    in_position += spaces;
	  }
	  break;

	case '\r':
	  {
	    FUNC1 (c, out);
	    FUNC2 (0, indent);
	    in_position = out_position = 0;
	  }
	  break;

	case '\b':
	  if (in_position != 0 && --in_position < out_bound)
	    {
	      if (out_position <= in_position)
		/* Add spaces to make up for suppressed tab past out_bound.  */
		for (;  out_position < in_position;  out_position++)
		  FUNC1 (' ', out);
	      else
		{
		  out_position = in_position;
		  FUNC1 (c, out);
		}
	    }
	  break;

	case '\f':
	case '\v':
	control_char:
	  if (in_position < out_bound)
	    FUNC1 (c, out);
	  break;

	default:
	  if (! FUNC0 (c))
	    goto control_char;
	  /* falls through */
	case ' ':
	  if (in_position++ < out_bound)
	    {
	      out_position = in_position;
	      FUNC1 (c, out);
	    }
	  break;

	case '\n':
	  return out_position;
	}
    }

  return out_position;
}