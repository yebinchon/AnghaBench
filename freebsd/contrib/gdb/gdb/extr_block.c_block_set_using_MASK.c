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
struct using_direct {int dummy; } ;
struct obstack {int dummy; } ;
struct block {int dummy; } ;
struct TYPE_2__ {struct using_direct* using; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct block*) ; 
 int /*<<< orphan*/  FUNC1 (struct block*,struct obstack*) ; 

void
FUNC2 (struct block *block,
		 struct using_direct *using,
		 struct obstack *obstack)
{
  FUNC1 (block, obstack);

  FUNC0 (block)->using = using;
}