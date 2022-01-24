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
struct ip_set {int /*<<< orphan*/  lock; TYPE_1__* variant; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush ) (struct ip_set*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_set*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct ip_set *set)
{
	FUNC0("set: %s\n",  set->name);

	FUNC2(&set->lock);
	set->variant->flush(set);
	FUNC3(&set->lock);
}