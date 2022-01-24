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
typedef  size_t u32 ;
struct _zone {int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {struct _zone** zones; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 struct _zone* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 TYPE_1__ tipc_net ; 
 size_t FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

struct _zone *FUNC6(u32 addr)
{
	struct _zone *z_ptr;
	u32 z_num;

	if (!FUNC3(addr)) {
		FUNC0("Zone creation failed, invalid domain 0x%x\n", addr);
		return NULL;
	}

	z_ptr = FUNC1(sizeof(*z_ptr), GFP_ATOMIC);
	if (!z_ptr) {
		FUNC5("Zone creation failed, insufficient memory\n");
		return NULL;
	}

	z_num = FUNC4(addr);
	z_ptr->addr = FUNC2(z_num, 0, 0);
	tipc_net.zones[z_num] = z_ptr;
	return z_ptr;
}