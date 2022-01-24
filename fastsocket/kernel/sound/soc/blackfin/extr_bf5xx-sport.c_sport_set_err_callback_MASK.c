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
struct sport_device {void (* err_callback ) (void*) ;void* err_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(struct sport_device *sport,
		void (*err_callback)(void *), void *err_data)
{
	FUNC0(err_callback == NULL);
	sport->err_callback = err_callback;
	sport->err_data = err_data;

	return 0;
}