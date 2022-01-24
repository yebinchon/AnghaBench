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
struct kioctx {int dummy; } ;
struct kiocb {int dummy; } ;

/* Variables and functions */
 struct kiocb* FUNC0 (struct kioctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline struct kiocb *FUNC3(struct kioctx *ctx)
{
	struct kiocb *req;
	/* Handle a potential starvation case -- should be exceedingly rare as 
	 * requests will be stuck on fput_head only if the aio_fput_routine is 
	 * delayed and the requests were the last user of the struct file.
	 */
	req = FUNC0(ctx);
	if (FUNC2(NULL == req)) {
		FUNC1(NULL);
		req = FUNC0(ctx);
	}
	return req;
}