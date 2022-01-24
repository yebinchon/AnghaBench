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
struct sport_device {void (* rx_callback ) (void*) ;void* rx_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(struct sport_device *sport,
		       void (*rx_callback)(void *), void *rx_data)
{
	FUNC0(rx_callback == NULL);
	sport->rx_callback = rx_callback;
	sport->rx_data = rx_data;

	return 0;
}