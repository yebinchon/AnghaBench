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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void*,int,char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC2(void *fdt, int nodeoffset, const char *name,
				   uint32_t val)
{
	val = FUNC0(val);
	return FUNC1(fdt, nodeoffset, name, &val, sizeof(val));
}