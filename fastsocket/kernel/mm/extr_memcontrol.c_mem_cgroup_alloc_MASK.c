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
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 struct mem_cgroup* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mem_cgroup*,int /*<<< orphan*/ ,int) ; 
 struct mem_cgroup* FUNC3 (int) ; 

__attribute__((used)) static struct mem_cgroup *FUNC4(void)
{
	struct mem_cgroup *mem;
	int size = FUNC1();

	if (size < PAGE_SIZE)
		mem = FUNC0(size, GFP_KERNEL);
	else
		mem = FUNC3(size);

	if (mem)
		FUNC2(mem, 0, size);
	return mem;
}