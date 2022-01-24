#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  len; int /*<<< orphan*/  text; } ;
struct TYPE_10__ {TYPE_1__ str; TYPE_3__ const* source; } ;
struct TYPE_11__ {scalar_t__ type; int flags; TYPE_2__ val; } ;
typedef  TYPE_3__ cpp_token ;
typedef  int /*<<< orphan*/  cpp_reader ;
struct TYPE_12__ {int /*<<< orphan*/  outf; TYPE_3__ const* prev; TYPE_3__ const* source; } ;

/* Variables and functions */
 scalar_t__ CPP_COMMENT ; 
 scalar_t__ CPP_EOF ; 
 scalar_t__ CPP_HASH ; 
 scalar_t__ CPP_PADDING ; 
 int PREV_WHITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_3__ const*,TYPE_3__ const*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__ const*,int /*<<< orphan*/ ) ; 
 TYPE_4__ print ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (cpp_reader *pfile)
{
  bool avoid_paste = false;

  print.source = NULL;
  for (;;)
    {
      const cpp_token *token = FUNC2 (pfile);

      if (token->type == CPP_PADDING)
	{
	  avoid_paste = true;
	  if (print.source == NULL
	      || (!(print.source->flags & PREV_WHITE)
		  && token->val.source == NULL))
	    print.source = token->val.source;
	  continue;
	}

      if (token->type == CPP_EOF)
	break;

      /* Subtle logic to output a space if and only if necessary.  */
      if (avoid_paste)
	{
	  if (print.source == NULL)
	    print.source = token;
	  if (print.source->flags & PREV_WHITE
	      || (print.prev
		  && FUNC1 (pfile, print.prev, token))
	      || (print.prev == NULL && token->type == CPP_HASH))
	    FUNC4 (' ', print.outf);
	}
      else if (token->flags & PREV_WHITE)
	FUNC4 (' ', print.outf);

      avoid_paste = false;
      print.source = NULL;
      print.prev = token;
      FUNC3 (token, print.outf);

      if (token->type == CPP_COMMENT)
	FUNC0 (token->val.str.text, token->val.str.len);
    }
}