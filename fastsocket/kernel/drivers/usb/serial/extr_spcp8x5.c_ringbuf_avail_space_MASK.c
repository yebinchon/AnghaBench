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
struct ringbuf {int buf_size; int buf_get; int buf_put; } ;

/* Variables and functions */

__attribute__((used)) static inline unsigned int FUNC0(struct ringbuf *pb)
{
	if (pb == NULL)
		return 0;
	return (pb->buf_size + pb->buf_get - pb->buf_put - 1) % pb->buf_size;
}