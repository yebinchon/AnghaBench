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

/* Variables and functions */
 int FUNC0 (void*,char*) ; 
 int FUNC1 (void*,int) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*,void*,int) ; 

int FUNC6(void *buf, int bufsize)
{
	int err;

	err = FUNC1(buf, bufsize);
	if (err)
		return err;

	err = FUNC4(buf);
	if (err)
		return err;

	err = FUNC0(buf, "");
	if (err)
		return err;

	err =  FUNC2(buf);
	if (err)
		return err;

	err = FUNC3(buf);
	if (err)
		return err;

	return FUNC5(buf, buf, bufsize);
}