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
struct macro_name_list {int dummy; } ;
struct macro_definition {char* replacement; int argc; char** argv; } ;
struct macro_buffer {scalar_t__ len; scalar_t__ last_token; char* text; scalar_t__ is_identifier; } ;
typedef  int /*<<< orphan*/  macro_lookup_ftype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct macro_buffer*,struct macro_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct macro_buffer*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct macro_buffer*,struct macro_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct macro_buffer*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct macro_buffer*,struct macro_buffer*,struct macro_name_list*,int /*<<< orphan*/ *,void*) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9 (struct macro_buffer *dest, 
                 struct macro_definition *def,
                 int argc, struct macro_buffer *argv,
                 struct macro_name_list *no_loop,
                 macro_lookup_ftype *lookup_func,
                 void *lookup_baton)
{
  /* A macro buffer for the macro's replacement list.  */
  struct macro_buffer replacement_list;

  FUNC5 (&replacement_list, (char *) def->replacement,
                      FUNC8 (def->replacement));

  FUNC3 (dest->len == 0);
  dest->last_token = 0;

  for (;;)
    {
      struct macro_buffer tok;
      char *original_rl_start = replacement_list.text;
      int substituted = 0;
      
      /* Find the next token in the replacement list.  */
      if (! FUNC4 (&tok, &replacement_list))
        break;

      /* Just for aesthetics.  If we skipped some whitespace, copy
         that to DEST.  */
      if (tok.text > original_rl_start)
        {
          FUNC1 (dest, original_rl_start, tok.text - original_rl_start);
          dest->last_token = dest->len;
        }

      /* Is this token the stringification operator?  */
      if (tok.len == 1
          && tok.text[0] == '#')
        FUNC2 ("Stringification is not implemented yet.");

      /* Is this token the splicing operator?  */
      if (tok.len == 2
          && tok.text[0] == '#'
          && tok.text[1] == '#')
        FUNC2 ("Token splicing is not implemented yet.");

      /* Is this token an identifier?  */
      if (tok.is_identifier)
        {
          int i;

          /* Is it the magic varargs parameter?  */
          if (tok.len == 11
              && ! FUNC6 (tok.text, "__VA_ARGS__", 11))
            FUNC2 ("Variable-arity macros not implemented yet.");

          /* Is it one of the parameters?  */
          for (i = 0; i < def->argc; i++)
            if (tok.len == FUNC8 (def->argv[i])
                && ! FUNC6 (tok.text, def->argv[i], tok.len))
              {
                struct macro_buffer arg_src;

                /* Expand any macro invocations in the argument text,
                   and append the result to dest.  Remember that scan
                   mutates its source, so we need to scan a new buffer
                   referring to the argument's text, not the argument
                   itself.  */
                FUNC5 (&arg_src, argv[i].text, argv[i].len);
                FUNC7 (dest, &arg_src, no_loop, lookup_func, lookup_baton);
                substituted = 1;
                break;
              }
        }

      /* If it wasn't a parameter, then just copy it across.  */
      if (! substituted)
        FUNC0 (dest, &tok);
    }
}