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
struct macro_buffer {char* text; int len; int last_token; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 int /*<<< orphan*/  FUNC2 (struct macro_buffer*,struct macro_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct macro_buffer*,char*,int) ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ,struct macro_buffer**) ; 
 int /*<<< orphan*/  FUNC5 (struct macro_buffer*,char*,char*) ; 
 scalar_t__ FUNC6 (int) ; 
 struct macro_buffer* FUNC7 (struct macro_buffer*,int) ; 

__attribute__((used)) static struct macro_buffer *
FUNC8 (const char *name, struct macro_buffer *src, int *argc_p)
{
  struct macro_buffer tok;
  int args_len, args_size;
  struct macro_buffer *args = NULL;
  struct cleanup *back_to = FUNC4 (free_current_contents, &args);

  /* Does SRC start with an opening paren token?  Read from a copy of
     SRC, so SRC itself is unaffected if we don't find an opening
     paren.  */
  {
    struct macro_buffer temp;
    FUNC3 (&temp, src->text, src->len);

    if (! FUNC2 (&tok, &temp)
        || tok.len != 1
        || tok.text[0] != '(')
      {
        FUNC0 (back_to);
        return 0;
      }
  }

  /* Consume SRC's opening paren.  */
  FUNC2 (&tok, src);

  args_len = 0;
  args_size = 1;                /* small for initial testing */
  args = (struct macro_buffer *) FUNC6 (sizeof (*args) * args_size);

  for (;;)
    {
      struct macro_buffer *arg;
      int depth;

      /* Make sure we have room for the next argument.  */
      if (args_len >= args_size)
        {
          args_size *= 2;
          args = FUNC7 (args, sizeof (*args) * args_size);
        }

      /* Initialize the next argument.  */
      arg = &args[args_len++];
      FUNC5 (arg, src->text, src->text);

      /* Gather the argument's tokens.  */
      depth = 0;
      for (;;)
        {
          char *start = src->text;

          if (! FUNC2 (&tok, src))
            FUNC1 ("Malformed argument list for macro `%s'.", name);
      
          /* Is tok an opening paren?  */
          if (tok.len == 1 && tok.text[0] == '(')
            depth++;

          /* Is tok is a closing paren?  */
          else if (tok.len == 1 && tok.text[0] == ')')
            {
              /* If it's a closing paren at the top level, then that's
                 the end of the argument list.  */
              if (depth == 0)
                {
                  FUNC0 (back_to);
                  *argc_p = args_len;
                  return args;
                }

              depth--;
            }

          /* If tok is a comma at top level, then that's the end of
             the current argument.  */
          else if (tok.len == 1 && tok.text[0] == ',' && depth == 0)
            break;

          /* Extend the current argument to enclose this token.  If
             this is the current argument's first token, leave out any
             leading whitespace, just for aesthetics.  */
          if (arg->len == 0)
            {
              arg->text = tok.text;
              arg->len = tok.len;
              arg->last_token = 0;
            }
          else
            {
              arg->len = (tok.text + tok.len) - arg->text;
              arg->last_token = tok.text - arg->text;
            }
        }
    }
}