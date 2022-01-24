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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct mx3fb_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDC_COM_CONF ; 
 int SDC_COM_GLB_A ; 
 int /*<<< orphan*/  SDC_GW_CTRL ; 
 int FUNC0 (struct mx3fb_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mx3fb_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct mx3fb_data *mx3fb, bool enable, uint8_t alpha)
{
	uint32_t reg;
	unsigned long lock_flags;

	FUNC2(&mx3fb->lock, lock_flags);

	if (enable) {
		reg = FUNC0(mx3fb, SDC_GW_CTRL) & 0x00FFFFFFL;
		FUNC1(mx3fb, reg | ((uint32_t) alpha << 24), SDC_GW_CTRL);

		reg = FUNC0(mx3fb, SDC_COM_CONF);
		FUNC1(mx3fb, reg | SDC_COM_GLB_A, SDC_COM_CONF);
	} else {
		reg = FUNC0(mx3fb, SDC_COM_CONF);
		FUNC1(mx3fb, reg & ~SDC_COM_GLB_A, SDC_COM_CONF);
	}

	FUNC3(&mx3fb->lock, lock_flags);

	return 0;
}