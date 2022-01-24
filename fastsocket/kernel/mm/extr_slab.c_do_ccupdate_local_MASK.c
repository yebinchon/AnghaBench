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
struct ccupdate_struct {struct array_cache** new; TYPE_1__* cachep; } ;
struct array_cache {int dummy; } ;
struct TYPE_2__ {struct array_cache** array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct array_cache* FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 () ; 

__attribute__((used)) static void FUNC3(void *info)
{
	struct ccupdate_struct *new = info;
	struct array_cache *old;

	FUNC0();
	old = FUNC1(new->cachep);

	new->cachep->array[FUNC2()] = new->new[FUNC2()];
	new->new[FUNC2()] = old;
}