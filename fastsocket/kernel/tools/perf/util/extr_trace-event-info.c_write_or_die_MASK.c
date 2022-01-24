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
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ calc_data_size ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  output_fd ; 
 int /*<<< orphan*/  output_file ; 
 int FUNC1 (int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC2(const void *buf, size_t len)
{
	int ret;

	if (calc_data_size) {
		calc_data_size += len;
		return len;
	}

	ret = FUNC1(output_fd, buf, len);
	if (ret < 0)
		FUNC0("writing to '%s'", output_file);

	return ret;
}