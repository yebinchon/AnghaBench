#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_5__ {unsigned int region_cnt; TYPE_1__* region; } ;
struct TYPE_6__ {TYPE_2__ mem_desc; } ;
struct TYPE_4__ {scalar_t__ paddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,int,scalar_t__,int,int,int,int,int,int) ; 
 TYPE_3__ dispc ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(int plane, int channel_out,
				  unsigned long offset,
				  int screen_width,
				  int pos_x, int pos_y, int width, int height,
				  int color_mode)
{
	u32 paddr;
	int r;

	if ((unsigned)plane > dispc.mem_desc.region_cnt)
		return -EINVAL;
	paddr = dispc.mem_desc.region[plane].paddr + offset;
	FUNC1(1);
	r = FUNC0(plane, channel_out, paddr,
			screen_width,
			pos_x, pos_y, width, height, color_mode);
	FUNC1(0);
	return r;
}