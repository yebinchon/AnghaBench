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
typedef  void* tree ;
struct tree_map {int /*<<< orphan*/  hash; void* to; void* from; } ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 struct tree_map* FUNC0 (int) ; 
 int /*<<< orphan*/  heapvar_for_stmt ; 
 void** FUNC1 (int /*<<< orphan*/ ,struct tree_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void
FUNC3 (tree from, tree to)
{
  struct tree_map *h;
  void **loc;

  h = FUNC0 (sizeof (struct tree_map));
  h->hash = FUNC2 (from);
  h->from = from;
  h->to = to;
  loc = FUNC1 (heapvar_for_stmt, h, h->hash, INSERT);
  *(struct tree_map **) loc = h;
}