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
typedef  int u32 ;
struct dsa_switch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_GLOBAL ; 
 int FUNC0 (struct dsa_switch*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct dsa_switch*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct dsa_switch*) ; 

__attribute__((used)) static void FUNC3(struct dsa_switch *ds, int stat, u32 *val)
{
	u32 _val;
	int ret;

	*val = 0;

	ret = FUNC1(ds, REG_GLOBAL, 0x1d, 0xcc00 | stat);
	if (ret < 0)
		return;

	ret = FUNC2(ds);
	if (ret < 0)
		return;

	ret = FUNC0(ds, REG_GLOBAL, 0x1e);
	if (ret < 0)
		return;

	_val = ret << 16;

	ret = FUNC0(ds, REG_GLOBAL, 0x1f);
	if (ret < 0)
		return;

	*val = _val | ret;
}