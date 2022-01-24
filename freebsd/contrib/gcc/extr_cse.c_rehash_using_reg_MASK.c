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
struct table_elt {struct table_elt* prev_same_hash; struct table_elt* next_same_hash; int /*<<< orphan*/  mode; int /*<<< orphan*/  exp; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int HASH_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct table_elt** table ; 

__attribute__((used)) static void
FUNC9 (rtx x)
{
  unsigned int i;
  struct table_elt *p, *next;
  unsigned hash;

  if (FUNC0 (x) == SUBREG)
    x = FUNC6 (x);

  /* If X is not a register or if the register is known not to be in any
     valid entries in the table, we have no work to do.  */

  if (!FUNC3 (x)
      || FUNC2 (FUNC1 (x)) < 0
      || FUNC2 (FUNC1 (x)) != FUNC4 (FUNC1 (x)))
    return;

  /* Scan all hash chains looking for valid entries that mention X.
     If we find one and it is in the wrong hash chain, move it.  */

  for (i = 0; i < HASH_SIZE; i++)
    for (p = table[i]; p; p = next)
      {
	next = p->next_same_hash;
	if (FUNC8 (x, p->exp)
	    && FUNC7 (p->exp, p->exp, 1, false)
	    && i != (hash = FUNC5 (p->exp, p->mode)))
	  {
	    if (p->next_same_hash)
	      p->next_same_hash->prev_same_hash = p->prev_same_hash;

	    if (p->prev_same_hash)
	      p->prev_same_hash->next_same_hash = p->next_same_hash;
	    else
	      table[i] = p->next_same_hash;

	    p->next_same_hash = table[hash];
	    p->prev_same_hash = 0;
	    if (table[hash])
	      table[hash]->prev_same_hash = p;
	    table[hash] = p;
	  }
      }
}