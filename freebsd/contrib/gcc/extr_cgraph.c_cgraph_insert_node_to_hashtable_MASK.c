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
struct cgraph_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 int /*<<< orphan*/  cgraph_hash ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct cgraph_node*,int /*<<< orphan*/ ) ; 

void
FUNC2 (struct cgraph_node *node)
{
  struct cgraph_node **slot;

  slot = (struct cgraph_node **) FUNC1 (cgraph_hash, node, INSERT);

  FUNC0 (!*slot);
  *slot = node;
}