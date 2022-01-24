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
struct ts_config {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* destroy ) (struct ts_config*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ts_config*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ts_config*) ; 

void FUNC3(struct ts_config *conf)
{
	if (conf->ops) {
		if (conf->ops->destroy)
			conf->ops->destroy(conf);
		FUNC1(conf->ops->owner);
	}

	FUNC0(conf);
}