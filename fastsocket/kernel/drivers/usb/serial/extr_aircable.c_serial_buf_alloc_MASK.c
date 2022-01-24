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
struct circ_buf {int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int AIRCABLE_BUF_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct circ_buf*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct circ_buf*) ; 

__attribute__((used)) static struct circ_buf *FUNC3(void)
{
	struct circ_buf *cb;
	cb = FUNC1(sizeof(struct circ_buf), GFP_KERNEL);
	if (cb == NULL)
		return NULL;
	cb->buf = FUNC1(AIRCABLE_BUF_SIZE, GFP_KERNEL);
	if (cb->buf == NULL) {
		FUNC0(cb);
		return NULL;
	}
	FUNC2(cb);
	return cb;
}