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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC1 (void const*,int,char*,int*) ; 

uint32_t FUNC2(const void *fdt, int nodeoffset)
{
	const uint32_t *php;
	int len;

	php = FUNC1(fdt, nodeoffset, "linux,phandle", &len);
	if (!php || (len != sizeof(*php)))
		return 0;

	return FUNC0(*php);
}