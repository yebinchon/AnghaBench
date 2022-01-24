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

/* Variables and functions */
 unsigned int HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct table_elt*,unsigned int) ; 
 struct table_elt** table ; 

__attribute__((used)) static void
FUNC3 (unsigned int regno)
{
  unsigned int i;
  struct table_elt *p, *next;

  for (i = 0; i < HASH_SIZE; i++)
    for (p = table[i]; p; p = next)
      {
	next = p->next_same_hash;
	if (!FUNC0 (p->exp)
	    && FUNC1 (regno, regno + 1, p->exp, (rtx *) 0))
	  FUNC2 (p, i);
      }
}