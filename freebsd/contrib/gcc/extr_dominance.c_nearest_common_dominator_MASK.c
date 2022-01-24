#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
typedef  TYPE_1__* basic_block ;
struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_6__ {int /*<<< orphan*/ * dom; } ;

/* Variables and functions */
 int /*<<< orphan*/ * dom_computed ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

basic_block
FUNC2 (enum cdi_direction dir, basic_block bb1, basic_block bb2)
{
  FUNC1 (dom_computed[dir]);

  if (!bb1)
    return bb2;
  if (!bb2)
    return bb1;

  return FUNC0 (bb1->dom[dir], bb2->dom[dir])->data;
}