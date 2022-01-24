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
 int /*<<< orphan*/  FUNC0 (struct adx_wdt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  driver_open ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct adx_wdt *wdt = file->private_data;

	FUNC0(wdt);
	FUNC1(0, &driver_open);

	return 0;
}