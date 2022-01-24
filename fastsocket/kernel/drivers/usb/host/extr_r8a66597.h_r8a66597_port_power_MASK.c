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
struct r8a66597 {TYPE_1__* pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* port_power ) (int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  VBOUT ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct r8a66597*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static inline void FUNC4(struct r8a66597 *r8a66597, int port,
				       int power)
{
	unsigned long dvstctr_reg = FUNC0(port);

	if (r8a66597->pdata->port_power) {
		r8a66597->pdata->port_power(port, power);
	} else {
		if (power)
			FUNC2(r8a66597, VBOUT, dvstctr_reg);
		else
			FUNC1(r8a66597, VBOUT, dvstctr_reg);
	}
}