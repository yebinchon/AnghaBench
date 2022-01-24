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
struct async_domain {int dummy; } ;
typedef  int /*<<< orphan*/  async_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct async_domain*) ; 
 int /*<<< orphan*/  async_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static async_cookie_t  FUNC3(struct async_domain *running)
{
	unsigned long flags;
	async_cookie_t ret;

	FUNC1(&async_lock, flags);
	ret = FUNC0(running);
	FUNC2(&async_lock, flags);
	return ret;
}