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
struct sport_device {void (* tx_callback ) (void*) ;void* tx_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(struct sport_device *sport,
		void (*tx_callback)(void *), void *tx_data)
{
	FUNC0(tx_callback == NULL);
	sport->tx_callback = tx_callback;
	sport->tx_data = tx_data;

	return 0;
}