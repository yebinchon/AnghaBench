#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ model; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ sb_devc ;

/* Variables and functions */
 scalar_t__ MDL_ESS ; 
 int /*<<< orphan*/  MIXER_ADDR ; 
 int /*<<< orphan*/  MIXER_DATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(sb_devc * devc, unsigned int port, unsigned int value)
{
	unsigned long flags;

	if (devc->model == MDL_ESS) {
		FUNC0 (devc, port, value);
		return;
	}

	FUNC2(&devc->lock, flags);

	FUNC1(((unsigned char) (port & 0xff)), MIXER_ADDR);
	FUNC4(20);
	FUNC1(((unsigned char) (value & 0xff)), MIXER_DATA);
	FUNC4(20);

	FUNC3(&devc->lock, flags);
}