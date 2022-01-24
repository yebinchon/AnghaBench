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
typedef  int u8 ;
struct dsa_switch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(struct dsa_switch *ds, u8 *addr)
{
	FUNC0(REG_GLOBAL, 0x01, (addr[0] << 8) | addr[1]);
	FUNC0(REG_GLOBAL, 0x02, (addr[2] << 8) | addr[3]);
	FUNC0(REG_GLOBAL, 0x03, (addr[4] << 8) | addr[5]);

	return 0;
}