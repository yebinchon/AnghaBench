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
struct TYPE_2__ {size_t len; void* data; } ;
struct carlfw {TYPE_1__ fw; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 void* FUNC3 (struct carlfw*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,size_t) ; 

void *FUNC5(struct carlfw *fw, ssize_t len)
{
	size_t new_len;
	void *ptr;

	new_len = fw->fw.len + len;
	if (!FUNC2(new_len))
		return FUNC0(-EINVAL);

	if (len < 0)
		FUNC4(fw->fw.data, &fw->fw.data[len], new_len);

	ptr = FUNC3(fw, len);
	if (FUNC1(ptr))
		return ptr;

	if (len > 0)
		FUNC4(&fw->fw.data[len], &fw->fw.data[0], new_len - len);

	return fw->fw.data;
}