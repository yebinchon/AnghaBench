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
struct nlm_cookie {scalar_t__ data; } ;
struct nlm_block {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,scalar_t__) ; 
 scalar_t__ nlm_lck_denied_grace_period ; 
 struct nlm_block* FUNC1 (struct nlm_cookie*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlm_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nlm_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlm_block*) ; 

void
FUNC5(struct nlm_cookie *cookie, __be32 status)
{
	struct nlm_block	*block;

	FUNC0("grant_reply: looking for cookie %x, s=%d \n",
		*(unsigned int *)(cookie->data), status);
	if (!(block = FUNC1(cookie)))
		return;

	if (block) {
		if (status == nlm_lck_denied_grace_period) {
			/* Try again in a couple of seconds */
			FUNC2(block, 10 * HZ);
		} else {
			/* Lock is now held by client, or has been rejected.
			 * In both cases, the block should be removed. */
			FUNC4(block);
		}
	}
	FUNC3(block);
}