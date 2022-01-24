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
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (struct macro_buffer*,char*,char*) ; 
 scalar_t__ FUNC3 (char*,char) ; 

__attribute__((used)) static int
FUNC4 (struct macro_buffer *tok, char *p, char *end)
{
  if (p < end
      && (FUNC0 (*p)
          || *p == '.'))
    {
      char *tok_start = p;

      while (p < end)
        {
          if (FUNC0 (*p)
              || FUNC1 (*p)
              || *p == '.')
            p++;
          else if (p + 2 <= end
                   && FUNC3 ("eEpP.", *p)
                   && (p[1] == '+' || p[1] == '-'))
            p += 2;
          else
            break;
        }

      FUNC2 (tok, tok_start, p);
      return 1;
    }
  else
    return 0;
}