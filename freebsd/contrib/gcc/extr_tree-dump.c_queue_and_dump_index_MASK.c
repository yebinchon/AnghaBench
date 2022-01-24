#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  TYPE_1__* splay_tree_node ;
typedef  int /*<<< orphan*/  splay_tree_key ;
typedef  TYPE_2__* dump_node_info_p ;
typedef  TYPE_3__* dump_info_p ;
struct TYPE_11__ {int column; int /*<<< orphan*/  stream; int /*<<< orphan*/  nodes; } ;
struct TYPE_10__ {unsigned int index; } ;
struct TYPE_9__ {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 unsigned int FUNC3 (TYPE_3__*,scalar_t__,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5 (dump_info_p di, const char *field, tree t, int flags)
{
  unsigned int index;
  splay_tree_node n;

  /* If there's no node, just return.  This makes for fewer checks in
     our callers.  */
  if (!t)
    return;

  /* See if we've already queued or dumped this node.  */
  n = FUNC4 (di->nodes, (splay_tree_key) t);
  if (n)
    index = ((dump_node_info_p) n->value)->index;
  else
    /* If we haven't, add it to the queue.  */
    index = FUNC3 (di, t, flags);

  /* Print the index of the node.  */
  FUNC1 (di);
  FUNC2 (di->stream, "%-4s: ", field);
  di->column += 6;
  FUNC0 (di, index);
}