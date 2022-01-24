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
struct symtab_and_line {int dummy; } ;
struct breakpoint {int thread; scalar_t__ cond; scalar_t__ number; } ;

/* Variables and functions */
 int /*<<< orphan*/  bp_breakpoint ; 
 scalar_t__ breakpoint_count ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct breakpoint* FUNC1 (struct symtab_and_line,int /*<<< orphan*/ ) ; 

struct breakpoint *
FUNC2 (struct symtab_and_line sal)
{
  struct breakpoint *b;
  b = FUNC1 (sal, bp_breakpoint);
  FUNC0 (breakpoint_count + 1);
  b->number = breakpoint_count;
  b->cond = 0;
  b->thread = -1;
  return b;
}