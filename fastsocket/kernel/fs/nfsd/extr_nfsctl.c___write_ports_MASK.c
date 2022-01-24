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
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char) ; 
 scalar_t__ FUNC6 (char) ; 

__attribute__((used)) static ssize_t FUNC7(struct file *file, char *buf, size_t size)
{
	if (size == 0)
		return FUNC4(buf);

	if (FUNC6(buf[0]))
		return FUNC0(buf);

	if (buf[0] == '-' && FUNC6(buf[1]))
		return FUNC2(buf);

	if (FUNC5(buf[0]))
		return FUNC1(buf);

	if (buf[0] == '-' && FUNC5(buf[1]))
		return FUNC3(buf);

	return -EINVAL;
}