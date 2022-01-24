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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_portid {int /*<<< orphan*/  node; int /*<<< orphan*/  ref; } ;
struct iovec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_PORT_IMPORTANCE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct tipc_portid const*,unsigned int,struct iovec const*,struct tipc_portid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_own_addr ; 

int FUNC1(u32 ref,
		   struct tipc_portid const *dest,
		   unsigned int num_sect,
		   struct iovec const *msg_sect)
{
	struct tipc_portid orig;

	orig.ref = ref;
	orig.node = tipc_own_addr;
	return FUNC0(ref, dest, num_sect, msg_sect, &orig,
				 TIPC_PORT_IMPORTANCE);
}