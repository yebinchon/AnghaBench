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
struct slow_work {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_ref ) (struct slow_work*) ;} ;

/* Variables and functions */
 int FUNC0 (struct slow_work*) ; 

__attribute__((used)) static inline int FUNC1(struct slow_work *work)
{
	if (work->ops->get_ref)
		return work->ops->get_ref(work);

	return 0;
}