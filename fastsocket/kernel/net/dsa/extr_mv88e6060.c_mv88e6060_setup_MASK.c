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
struct dsa_switch {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dsa_switch*) ; 
 int FUNC1 (struct dsa_switch*,int) ; 
 int FUNC2 (struct dsa_switch*) ; 

__attribute__((used)) static int FUNC3(struct dsa_switch *ds)
{
	int i;
	int ret;

	ret = FUNC2(ds);
	if (ret < 0)
		return ret;

	/* @@@ initialise atu */

	ret = FUNC0(ds);
	if (ret < 0)
		return ret;

	for (i = 0; i < 6; i++) {
		ret = FUNC1(ds, i);
		if (ret < 0)
			return ret;
	}

	return 0;
}