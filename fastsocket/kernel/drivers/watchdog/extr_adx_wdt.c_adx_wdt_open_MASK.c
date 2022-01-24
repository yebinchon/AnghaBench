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
struct inode {int dummy; } ;
struct file {struct adx_wdt* private_data; } ;
struct adx_wdt {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  adx_wdt_dev ; 
 int /*<<< orphan*/  FUNC0 (struct adx_wdt*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adx_wdt*) ; 
 int /*<<< orphan*/  driver_open ; 
 int FUNC2 (struct inode*,struct file*) ; 
 struct adx_wdt* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct adx_wdt *wdt = FUNC3(adx_wdt_dev);

	if (FUNC4(0, &driver_open))
		return -EBUSY;

	file->private_data = wdt;
	FUNC0(wdt, 30);
	FUNC1(wdt);

	return FUNC2(inode, file);
}