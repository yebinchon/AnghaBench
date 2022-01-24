#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ input_byte; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ uart401_devc ;

/* Variables and functions */
 scalar_t__ MPU_ACK ; 
 int /*<<< orphan*/  UART_MODE_ON ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(uart401_devc * devc)
{
	int ok, timeout;
	unsigned long flags;

	FUNC2(&devc->lock,flags);	
	for (timeout = 30000; timeout > 0 && !FUNC1(devc); timeout--);

	devc->input_byte = 0;
	FUNC4(devc, UART_MODE_ON);

	ok = 0;
	for (timeout = 50000; timeout > 0 && !ok; timeout--)
		if (devc->input_byte == MPU_ACK)
			ok = 1;
		else if (FUNC0(devc))
			if (FUNC5(devc) == MPU_ACK)
				ok = 1;

	FUNC3(&devc->lock,flags);
}