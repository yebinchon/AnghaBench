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
typedef  char unichar ;
typedef  int rc_uint_type ;
typedef  char bfd_byte ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int,char const*) ; 
 scalar_t__ FUNC4 (int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  wrtarget ; 

__attribute__((used)) static void
FUNC8 (FILE *e, rc_uint_type length, const bfd_byte *data, int has_next,
		    int hasblock, int show_comment)
{
  int plen;

  if (hasblock)
    FUNC1 (e, "BEGIN\n");

  if (show_comment == -1)
	  {
      if (FUNC3(length, data))
	{
	  rc_uint_type i, c;
	  for (i = 0; i < length;)
	    {
	      FUNC2 (e, 2);
	      FUNC1 (e, "\"");

	      for (c = 0; i < length && c < 160 && data[i] != '\n'; c++, i++)
		;
	      if (i < length && data[i] == '\n')
		++i, ++c;
	      FUNC0 (e, (const char *) &data[i - c], c);
	    FUNC1 (e, "\"");
	      if (i < length)
		FUNC1 (e, "\n");
	    }
          
	  if (i == 0)
	      {
	      FUNC2 (e, 2);
	      FUNC1 (e, "\"\"");
	      }
	  if (has_next)
	    FUNC1 (e, ",");
	  FUNC1 (e, "\n");
	  if (hasblock)
	    FUNC1 (e, "END\n");
	  return;
	  }
      if (FUNC4 (length, data))
	{
	  rc_uint_type i, c;
	  for (i = 0; i < length;)
	    {
	      const unichar *u;

	      u = (const unichar *) &data[i];
	      FUNC2 (e, 2);
	  FUNC1 (e, "L\"");
    	  
	      for (c = 0; i < length && c < 160 && u[c] != '\n'; c++, i += 2)
		;
	      if (i < length && u[c] == '\n')
		i += 2, ++c;
	      FUNC5 (e, u, c);
	  FUNC1 (e, "\"");
	      if (i < length)
		FUNC1 (e, "\n");
	    }

	  if (i == 0)
	  {
	      FUNC2 (e, 2);
	      FUNC1 (e, "L\"\"");
	    }
	  if (has_next)
	    FUNC1 (e, ",");
	  FUNC1 (e, "\n");
	  if (hasblock)
	    FUNC1 (e, "END\n");
	  return;
	}

      show_comment = 0;
    }

  if (length != 0)
	      {
      rc_uint_type i, max_row;
      int first = 1;

      max_row = (show_comment ? 4 : 8);
      FUNC2 (e, 2);
      for (i = 0; i + 3 < length;)
		  {
	  rc_uint_type k;
	  rc_uint_type comment_start;
	  
	  comment_start = i;
	  
	  if (! first)
	    FUNC2 (e, 2);

	  for (k = 0; k < max_row && i + 3 < length; k++, i += 4)
		      {
	      if (k == 0)
		plen  = FUNC1 (e, "0x%lxL",
				 (long) FUNC7 (&wrtarget, data + i, length - i));
			else
		plen = FUNC1 (e, " 0x%lxL",
				(long) FUNC7 (&wrtarget, data + i, length - i)) - 1;
	      if (has_next || (i + 4) < length)
			  {
		  if (plen>0 && plen < 11)
		    FUNC2 (e, 11 - plen);
		  FUNC1 (e, ",");
			  }
		      }
	  if (show_comment)
	    {
	      FUNC1 (e, "\t/* ");
	      FUNC0 (e, (const char *) &data[comment_start], i - comment_start);
	      FUNC1 (e, ".  */");
		  }
		FUNC1 (e, "\n");
		first = 0;
	      }

      if (i + 1 < length)
	      {
		if (! first)
	    FUNC2 (e, 2);
	  plen = FUNC1 (e, "0x%x",
	  		  (int) FUNC6 (&wrtarget, data + i, length - i));
	  if (has_next || i + 2 < length)
		  {
	      if (plen > 0 && plen < 11)
		FUNC2 (e, 11 - plen);
	      FUNC1 (e, ",");
		      }
	  if (show_comment)
	    {
	      FUNC1 (e, "\t/* ");
	      FUNC0 (e, (const char *) &data[i], 2);
	      FUNC1 (e, ".  */");
		  }
		FUNC1 (e, "\n");
		i += 2;
		first = 0;
	      }

      if (i < length)
	      {
		if (! first)
	    FUNC2 (e, 2);
	  FUNC1 (e, "\"");
	  FUNC0 (e, (const char *) &data[i], 1);
	  FUNC1 (e, "\"");
	  if (has_next)
		  FUNC1 (e, ",");
		FUNC1 (e, "\n");
		first = 0;
	      }
    }
  if (hasblock)
    FUNC1 (e, "END\n");
}