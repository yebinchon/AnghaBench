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
struct cypress_buf {unsigned int buf_size; unsigned int buf_put; unsigned int buf_get; } ;

/* Variables and functions */

__attribute__((used)) static unsigned int FUNC0(struct cypress_buf *cb)
{
	if (cb != NULL)
		return (cb->buf_size + cb->buf_put - cb->buf_get)
							% cb->buf_size;
	else
		return 0;
}