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
struct table_elt {int /*<<< orphan*/  exp; struct table_elt* next_same_hash; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 unsigned int HASH_SIZE ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct table_elt*,unsigned int) ; 
 struct table_elt** table ; 

__attribute__((used)) static void
FUNC9 (unsigned int regno, unsigned int offset,
			    enum machine_mode mode)
{
  unsigned int i;
  struct table_elt *p, *next;
  unsigned int end = offset + (FUNC2 (mode) - 1);

  for (i = 0; i < HASH_SIZE; i++)
    for (p = table[i]; p; p = next)
      {
	rtx exp = p->exp;
	next = p->next_same_hash;

	if (!FUNC4 (exp)
	    && (FUNC0 (exp) != SUBREG
		|| !FUNC4 (FUNC6 (exp))
		|| FUNC3 (FUNC6 (exp)) != regno
		|| (((FUNC5 (exp)
		      + (FUNC2 (FUNC1 (exp)) - 1)) >= offset)
		    && FUNC5 (exp) <= end))
	    && FUNC7 (regno, regno + 1, p->exp, (rtx *) 0))
	  FUNC8 (p, i);
      }
}