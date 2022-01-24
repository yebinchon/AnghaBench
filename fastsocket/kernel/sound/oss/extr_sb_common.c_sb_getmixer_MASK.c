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
 unsigned int FUNC0 (TYPE_1__*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

unsigned int FUNC6(sb_devc * devc, unsigned int port)
{
	unsigned int val;
	unsigned long flags;

	if (devc->model == MDL_ESS) return FUNC0 (devc, port);

	FUNC3(&devc->lock, flags);

	FUNC2(((unsigned char) (port & 0xff)), MIXER_ADDR);
	FUNC5(20);
	val = FUNC1(MIXER_DATA);
	FUNC5(20);

	FUNC4(&devc->lock, flags);

	return val;
}