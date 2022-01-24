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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*,int /*<<< orphan*/ ,struct ui_file*) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,char*,int,char*) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5 (struct type *type, char *bounds, int *n,
		   struct ui_file *stream)
{
  LONGEST B;
  if (FUNC1 (bounds, *n, &B, n))
    {
      FUNC0 (type, B, stream);
      if (bounds[*n] == '_')
	*n += 2;
    }
  else
    {
      int bound_len;
      char *bound = bounds + *n;
      char *pend;

      pend = FUNC4 (bound, "__");
      if (pend == NULL)
	*n += bound_len = FUNC3 (bound);
      else
	{
	  bound_len = pend - bound;
	  *n += bound_len + 2;
	}
      FUNC2 (stream, "%.*s", bound_len, bound);
    }
}