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
typedef  int /*<<< orphan*/  tree ;
struct tree_int_map {unsigned short to; int /*<<< orphan*/  from; } ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 struct tree_int_map* FUNC0 (int) ; 
 void** FUNC1 (int /*<<< orphan*/ ,struct tree_int_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_priority_for_decl ; 

void
FUNC3 (tree from, unsigned short to)
{
  struct tree_int_map *h;
  void **loc;

  h = FUNC0 (sizeof (struct tree_int_map));
  h->from = from;
  h->to = to;
  loc = FUNC1 (init_priority_for_decl, h, 
				  FUNC2 (from), INSERT);
  *(struct tree_int_map **) loc = h;
}