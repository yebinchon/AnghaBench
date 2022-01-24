#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resmap {unsigned long start; } ;
struct TYPE_4__ {TYPE_1__* fbdev; struct resmap** res_map; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long FUNC0 (size_t) ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,unsigned long,size_t) ; 
 TYPE_2__ dispc ; 
 int /*<<< orphan*/  FUNC2 (struct resmap*,unsigned int) ; 
 int FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long start, size_t size)
{
	struct resmap	*res_map;
	unsigned	start_page;
	unsigned	end_page;
	unsigned	i;
	int		mtype;

	mtype = FUNC3(start);
	res_map = dispc.res_map[mtype];
	FUNC1(dispc.fbdev->dev, "free mem type %d start %08lx size %d\n",
		mtype, start, size);
	start_page = (start - res_map->start) / PAGE_SIZE;
	end_page = start_page + FUNC0(size) / PAGE_SIZE;
	for (i = start_page; i < end_page; i++)
		FUNC2(res_map, i);
}