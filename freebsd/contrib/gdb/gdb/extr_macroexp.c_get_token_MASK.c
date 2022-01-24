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
struct macro_buffer {char* text; int len; int /*<<< orphan*/  shared; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct macro_buffer*,char*,char*) ; 
 scalar_t__ FUNC2 (struct macro_buffer*,char*,char*) ; 
 scalar_t__ FUNC3 (struct macro_buffer*,char*,char*) ; 
 scalar_t__ FUNC4 (struct macro_buffer*,char*,char*) ; 
 scalar_t__ FUNC5 (struct macro_buffer*,char*,char*) ; 
 scalar_t__ FUNC6 (struct macro_buffer*,char*,char*) ; 
 scalar_t__ FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (struct macro_buffer*,char*,char*) ; 

__attribute__((used)) static int
FUNC9 (struct macro_buffer *tok,
           struct macro_buffer *src)
{
  char *p = src->text;
  char *end = p + src->len;

  FUNC0 (src->shared);

  /* From the ISO C standard, ISO/IEC 9899:1999 (E), section 6.4:

     preprocessing-token: 
         header-name
         identifier
         pp-number
         character-constant
         string-literal
         punctuator
         each non-white-space character that cannot be one of the above

     We don't have to deal with header-name tokens, since those can
     only occur after a #include, which we will never see.  */

  while (p < end)
    if (FUNC7 (*p))
      p++;
    else if (FUNC2 (tok, p, end))
      p += tok->len;
    else if (FUNC4 (tok, p, end)
             || FUNC1 (tok, p, end)
             || FUNC6 (tok, p, end)
             /* Note: the grammar in the standard seems to be
                ambiguous: L'x' can be either a wide character
                constant, or an identifier followed by a normal
                character constant.  By trying `get_identifier' after
                we try get_character_constant and get_string_literal,
                we give the wide character syntax precedence.  Now,
                since GDB doesn't handle wide character constants
                anyway, is this the right thing to do?  */
             || FUNC3 (tok, p, end)
             || FUNC5 (tok, p, end))
      {
        /* How many characters did we consume, including whitespace?  */
        int consumed = p - src->text + tok->len;
        src->text += consumed;
        src->len -= consumed;
        return 1;
      }
    else 
      {
        /* We have found a "non-whitespace character that cannot be
           one of the above."  Make a token out of it.  */
        int consumed;

        FUNC8 (tok, p, p + 1);
        consumed = p - src->text + tok->len;
        src->text += consumed;
        src->len -= consumed;
        return 1;
      }

  return 0;
}