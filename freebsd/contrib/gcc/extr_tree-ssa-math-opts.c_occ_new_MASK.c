#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct occurrence {struct occurrence* children; TYPE_1__* bb; } ;
typedef  TYPE_1__* basic_block ;
struct TYPE_3__ {struct occurrence* aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct occurrence*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  occ_pool ; 
 struct occurrence* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct occurrence *
FUNC2 (basic_block bb, struct occurrence *children)
{
  struct occurrence *occ;

  occ = bb->aux = FUNC1 (occ_pool);
  FUNC0 (occ, 0, sizeof (struct occurrence));

  occ->bb = bb;
  occ->children = children;
  return occ;
}