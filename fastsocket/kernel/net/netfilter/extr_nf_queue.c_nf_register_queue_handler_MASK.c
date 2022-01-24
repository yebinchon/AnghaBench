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
typedef  size_t u_int8_t ;
struct nf_queue_handler {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct nf_queue_handler const**) ; 
 int EBUSY ; 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nf_queue_handler const** queue_handler ; 
 int /*<<< orphan*/  queue_handler_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct nf_queue_handler const*,struct nf_queue_handler const*) ; 

int FUNC4(u_int8_t pf, const struct nf_queue_handler *qh)
{
	int ret;

	if (pf >= FUNC0(queue_handler))
		return -EINVAL;

	FUNC1(&queue_handler_mutex);
	if (queue_handler[pf] == qh)
		ret = -EEXIST;
	else if (queue_handler[pf])
		ret = -EBUSY;
	else {
		FUNC3(queue_handler[pf], qh);
		ret = 0;
	}
	FUNC2(&queue_handler_mutex);

	return ret;
}