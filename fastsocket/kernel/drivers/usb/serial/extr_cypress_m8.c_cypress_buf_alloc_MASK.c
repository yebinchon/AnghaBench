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
struct cypress_buf {unsigned int buf_size; int /*<<< orphan*/ * buf_buf; int /*<<< orphan*/ * buf_put; int /*<<< orphan*/ * buf_get; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cypress_buf*) ; 
 void* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cypress_buf *FUNC2(unsigned int size)
{

	struct cypress_buf *cb;


	if (size == 0)
		return NULL;

	cb = FUNC1(sizeof(struct cypress_buf), GFP_KERNEL);
	if (cb == NULL)
		return NULL;

	cb->buf_buf = FUNC1(size, GFP_KERNEL);
	if (cb->buf_buf == NULL) {
		FUNC0(cb);
		return NULL;
	}

	cb->buf_size = size;
	cb->buf_get = cb->buf_put = cb->buf_buf;

	return cb;

}