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
struct macro_buffer {char* text; scalar_t__ last_token; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  macro_lookup_ftype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct macro_buffer*,char) ; 
 int /*<<< orphan*/  cleanup_macro_buffer ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC3 (struct macro_buffer*,struct macro_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct macro_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct macro_buffer*,char*,int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC6 (int /*<<< orphan*/ ,struct macro_buffer*) ; 
 scalar_t__ FUNC7 (struct macro_buffer*,struct macro_buffer*,struct macro_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

char *
FUNC9 (char **lexptr,
                   macro_lookup_ftype *lookup_func,
                   void *lookup_baton)
{
  struct macro_buffer src, dest, tok;
  struct cleanup *back_to;

  /* Set up SRC to refer to the input text, pointed to by *lexptr.  */
  FUNC5 (&src, *lexptr, FUNC8 (*lexptr));

  /* Set up DEST to receive the expansion, if there is one.  */
  FUNC4 (&dest, 0);
  dest.last_token = 0;
  back_to = FUNC6 (cleanup_macro_buffer, &dest);

  /* Get the text's first preprocessing token.  */
  if (! FUNC3 (&tok, &src))
    {
      FUNC2 (back_to);
      return 0;
    }

  /* If it's a macro invocation, expand it.  */
  if (FUNC7 (&dest, &tok, &src, 0, lookup_func, lookup_baton))
    {
      /* It was a macro invocation!  Package up the expansion as a
         null-terminated string and return it.  Set *lexptr to the
         start of the next token in the input.  */
      FUNC0 (&dest, '\0');
      FUNC1 (back_to);
      *lexptr = src.text;
      return dest.text;
    }
  else
    {
      /* It wasn't a macro invocation.  */
      FUNC2 (back_to);
      return 0;
    }
}