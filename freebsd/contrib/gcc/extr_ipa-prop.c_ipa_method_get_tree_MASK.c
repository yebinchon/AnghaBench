#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct cgraph_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ipa_param_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct cgraph_node*) ; 

tree
FUNC1 (struct cgraph_node *mt, int i)
{
  return FUNC0 (mt)->ipa_param_tree[i];
}