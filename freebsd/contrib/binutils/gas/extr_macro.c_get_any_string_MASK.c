#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int len; char* ptr; } ;
typedef  TYPE_1__ sb ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ macro_alternate ; 
 int FUNC5 (int /*<<< orphan*/ ,int,TYPE_1__*,int*) ; 
 scalar_t__ macro_mri ; 
 int /*<<< orphan*/  macro_strip_at ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,TYPE_1__*,int*) ; 
 char* FUNC14 (int) ; 

__attribute__((used)) static int
FUNC15 (int idx, sb *in, sb *out)
{
  FUNC8 (out);
  idx = FUNC9 (idx, in);

  if (idx < in->len)
    {
      if (in->len > idx + 2 && in->ptr[idx + 1] == '\'' && FUNC0 (in->ptr[idx]))
	{
	  while (!FUNC1 (in->ptr[idx]))
	    FUNC6 (out, in->ptr[idx++]);
	}
      else if (in->ptr[idx] == '%' && macro_alternate)
	{
	  int val;
	  char buf[20];

	  /* Turns the next expression into a string.  */
	  /* xgettext: no-c-format */
	  idx = FUNC5) (FUNC2("% operator needs absolute expression"),
			       idx + 1,
			       in,
			       &val);
	  FUNC10 (buf, "%d", val);
	  FUNC7 (out, buf);
	}
      else if (in->ptr[idx] == '"'
	       || (in->ptr[idx] == '<' && (macro_alternate || macro_mri))
	       || (macro_alternate && in->ptr[idx] == '\''))
	{
	  if (macro_alternate && ! macro_strip_at && in->ptr[idx] != '<')
	    {
	      /* Keep the quotes.  */
	      FUNC6 (out, '"');
	      idx = FUNC4 (idx, in, out);
	      FUNC6 (out, '"');
	    }
	  else
	    {
	      idx = FUNC4 (idx, in, out);
	    }
	}
      else
	{
	  char *br_buf = FUNC14(1);
	  char *in_br = br_buf;

	  *in_br = '\0';
	  while (idx < in->len
		 && (*in_br
		     || (in->ptr[idx] != ' '
			 && in->ptr[idx] != '\t'))
		 && in->ptr[idx] != ','
		 && (in->ptr[idx] != '<'
		     || (! macro_alternate && ! macro_mri)))
	    {
	      char tchar = in->ptr[idx];

	      switch (tchar)
		{
		case '"':
		case '\'':
		  FUNC6 (out, in->ptr[idx++]);
		  while (idx < in->len
			 && in->ptr[idx] != tchar)
		    FUNC6 (out, in->ptr[idx++]);
		  if (idx == in->len)
		    return idx;
		  break;
		case '(':
		case '[':
		  if (in_br > br_buf)
		    --in_br;
		  else
		    {
		      br_buf = FUNC14(FUNC12(in_br) + 2);
		      FUNC11(br_buf + 1, in_br);
		      FUNC3(in_br);
		      in_br = br_buf;
		    }
		  *in_br = tchar;
		  break;
		case ')':
		  if (*in_br == '(')
		    ++in_br;
		  break;
		case ']':
		  if (*in_br == '[')
		    ++in_br;
		  break;
		}
	      FUNC6 (out, tchar);
	      ++idx;
	    }
	  FUNC3(br_buf);
	}
    }

  return idx;
}