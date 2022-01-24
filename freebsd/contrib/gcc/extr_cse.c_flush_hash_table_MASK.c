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
struct table_elt {int /*<<< orphan*/  exp; } ;

/* Variables and functions */
 int HASH_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct table_elt*,int) ; 
 struct table_elt** table ; 

__attribute__((used)) static void
FUNC3 (void)
{
  int i;
  struct table_elt *p;

  for (i = 0; i < HASH_SIZE; i++)
    for (p = table[i]; p; p = table[i])
      {
	/* Note that invalidate can remove elements
	   after P in the current hash chain.  */
	if (FUNC0 (p->exp))
	  FUNC1 (p->exp, VOIDmode);
	else
	  FUNC2 (p, i);
      }
}