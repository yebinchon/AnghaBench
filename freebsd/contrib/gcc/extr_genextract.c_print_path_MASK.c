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

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6 (const char *path)
{
  int len = FUNC5 (path);
  int i;

  if (len == 0)
    {
      /* Don't emit "pat", since we may try to take the address of it,
	 which isn't what is intended.  */
      FUNC2 ("PATTERN (insn)", stdout);
      return;
    }

  /* We first write out the operations (XEXP or XVECEXP) in reverse
     order, then write "pat", then the indices in forward order.  */

  for (i = len - 1; i >= 0 ; i--)
    {
      if (FUNC1 (path[i]))
	FUNC2 ("XVECEXP (", stdout);
      else if (FUNC0 (path[i]))
	FUNC2 ("XEXP (", stdout);
      else
	FUNC3 ();
    }

  FUNC2 ("pat", stdout);

  for (i = 0; i < len; i++)
    {
      if (FUNC1 (path[i]))
	FUNC4 (", 0, %d)", path[i] - 'a');
      else if (FUNC0(path[i]))
	FUNC4 (", %d)", path[i] - '0');
      else
	FUNC3 ();
    }
}