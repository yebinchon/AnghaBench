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
struct macro_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (struct macro_buffer*,char*,char*) ; 

__attribute__((used)) static int
FUNC4 (struct macro_buffer *tok, char *p, char *end)
{
  if ((p + 1 <= end
       && *p == '\"')
      || (p + 2 <= end
          && p[0] == 'L'
          && p[1] == '\"'))
    {
      char *tok_start = p;

      if (*p == '\"')
        p++;
      else if (*p == 'L')
        p += 2;
      else
        FUNC1 (0);

      for (;;)
        {
          if (p >= end)
            FUNC0 ("Unterminated string in expression.");
          else if (*p == '\"')
            {
              p++;
              break;
            }
          else if (*p == '\n')
            FUNC0 ("Newline characters may not appear in string "
                   "constants.");
          else if (*p == '\\')
            {
              p++;
              FUNC2 (&p);
            }
          else
            p++;
        }

      FUNC3 (tok, tok_start, p);
      return 1;
    }
  else
    return 0;
}