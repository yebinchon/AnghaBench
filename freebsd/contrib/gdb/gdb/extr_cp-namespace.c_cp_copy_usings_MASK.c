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
struct using_direct {struct using_direct* outer; struct using_direct* inner; struct using_direct* next; } ;
struct obstack {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct using_direct*,int /*<<< orphan*/ ,struct obstack*) ; 
 struct using_direct* FUNC1 (struct obstack*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct using_direct*) ; 
 int /*<<< orphan*/  FUNC3 (struct using_direct*) ; 

__attribute__((used)) static struct using_direct *
FUNC4 (struct using_direct *using,
		struct obstack *obstack)
{
  if (using == NULL)
    {
      return NULL;
    }
  else
    {
      struct using_direct *retval
	= FUNC1 (obstack, sizeof (struct using_direct));
      retval->inner = FUNC0 (using->inner, FUNC2 (using->inner),
				    obstack);
      retval->outer = FUNC0 (using->outer, FUNC2 (using->outer),
				    obstack);
      retval->next = FUNC4 (using->next, obstack);

      FUNC3 (using->inner);
      FUNC3 (using->outer);
      FUNC3 (using);

      return retval;
    }
}