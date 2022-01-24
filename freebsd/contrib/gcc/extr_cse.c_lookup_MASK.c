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
struct table_elt {int mode; scalar_t__ exp; struct table_elt* next_same_hash; } ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,int,int) ; 
 struct table_elt** table ; 

__attribute__((used)) static struct table_elt *
FUNC2 (rtx x, unsigned int hash, enum machine_mode mode)
{
  struct table_elt *p;

  for (p = table[hash]; p; p = p->next_same_hash)
    if (mode == p->mode && ((x == p->exp && FUNC0 (x))
			    || FUNC1 (x, p->exp, !FUNC0 (x), false)))
      return p;

  return 0;
}