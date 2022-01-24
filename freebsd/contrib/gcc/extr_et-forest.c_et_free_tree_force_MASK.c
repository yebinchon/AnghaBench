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
struct et_node {struct et_node* parent_occ; struct et_node* rightmost_occ; } ;

/* Variables and functions */
 int /*<<< orphan*/  et_nodes ; 
 int /*<<< orphan*/  et_occurrences ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct et_node*) ; 

void
FUNC1 (struct et_node *t)
{
  FUNC0 (et_occurrences, t->rightmost_occ);
  if (t->parent_occ)
    FUNC0 (et_occurrences, t->parent_occ);
  FUNC0 (et_nodes, t);
}