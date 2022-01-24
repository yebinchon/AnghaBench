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
struct carlu {int dummy; } ;

/* Variables and functions */
 struct carlu* FUNC0 (int) ; 
 struct carlu* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct carlu*) ; 
 int FUNC3 (struct carlu*,int) ; 
 int FUNC4 (struct carlu*) ; 

__attribute__((used)) static struct carlu *FUNC5(void)
{
	struct carlu *tmp;
	int err;

	tmp = FUNC1(sizeof(*tmp));
	if (tmp == NULL)
		return NULL;

	err = FUNC4(tmp);
	if (err < 0)
		goto err_out;

	err = FUNC3(tmp, true);
	if (err < 0)
		goto err_out;

	return tmp;

err_out:
	FUNC2(tmp);
	return FUNC0(err);
}