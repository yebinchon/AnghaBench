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
struct cgraph_varpool_node {int needed; int /*<<< orphan*/  decl; scalar_t__ finalized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cgraph_varpool_node*) ; 

void
FUNC2 (struct cgraph_varpool_node *node)
{
  if (!node->needed && node->finalized
      && !FUNC0 (node->decl))
    FUNC1 (node);
  node->needed = 1;
}