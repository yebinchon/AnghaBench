#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int condition; } ;
typedef  TYPE_1__ ax25_cb ;

/* Variables and functions */
 int /*<<< orphan*/  AX25_COMMAND ; 
 int AX25_COND_ACK_PENDING ; 
 int AX25_COND_OWN_RX_BUSY ; 
 int /*<<< orphan*/  AX25_POLLON ; 
 int /*<<< orphan*/  AX25_RNR ; 
 int /*<<< orphan*/  AX25_RR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(ax25_cb *ax25)
{
	if (ax25->condition & AX25_COND_OWN_RX_BUSY)
		FUNC1(ax25, AX25_RNR, AX25_POLLON, AX25_COMMAND);
	else
		FUNC1(ax25, AX25_RR, AX25_POLLON, AX25_COMMAND);

	ax25->condition &= ~AX25_COND_ACK_PENDING;

	FUNC0(ax25);
	FUNC2(ax25);
}