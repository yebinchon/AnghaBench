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
struct TYPE_2__ {int value; } ;
struct filter_arg {TYPE_1__ boolean; int /*<<< orphan*/  type; } ;
typedef  enum filter_vals { ____Placeholder_filter_vals } filter_vals ;

/* Variables and functions */
 int /*<<< orphan*/  FILTER_ARG_BOOLEAN ; 
#define  FILTER_VAL_FALSE 130 
#define  FILTER_VAL_NORM 129 
#define  FILTER_VAL_TRUE 128 
 struct filter_arg* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct filter_arg*) ; 
 int FUNC2 (struct filter_arg*,struct filter_arg*) ; 

__attribute__((used)) static struct filter_arg *FUNC3(struct filter_arg *arg)
{
	enum filter_vals ret;

	ret = FUNC2(arg, arg);
	switch (ret) {
	case FILTER_VAL_NORM:
		return arg;

	case FILTER_VAL_TRUE:
	case FILTER_VAL_FALSE:
		FUNC1(arg);
		arg = FUNC0();
		arg->type = FILTER_ARG_BOOLEAN;
		arg->boolean.value = ret == FILTER_VAL_TRUE;
	}

	return arg;
}