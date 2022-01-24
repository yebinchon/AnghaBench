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
struct read_buffer {size_t len; int /*<<< orphan*/  list; int /*<<< orphan*/  msg; scalar_t__ cons; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct read_buffer* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static int FUNC3(struct list_head *queue, const void *data, size_t len)
{
	struct read_buffer *rb;

	if (len == 0)
		return 0;

	rb = FUNC0(sizeof(*rb) + len, GFP_KERNEL);
	if (rb == NULL)
		return -ENOMEM;

	rb->cons = 0;
	rb->len = len;

	FUNC2(rb->msg, data, len);

	FUNC1(&rb->list, queue);
	return 0;
}