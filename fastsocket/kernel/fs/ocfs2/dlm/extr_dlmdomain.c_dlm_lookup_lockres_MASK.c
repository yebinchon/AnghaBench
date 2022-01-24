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
struct dlm_lock_resource {int dummy; } ;
struct dlm_ctxt {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 struct dlm_lock_resource* FUNC0 (struct dlm_ctxt*,char const*,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct dlm_lock_resource * FUNC4(struct dlm_ctxt *dlm,
				    const char *name,
				    unsigned int len)
{
	struct dlm_lock_resource *res;
	unsigned int hash = FUNC1(name, len);

	FUNC2(&dlm->spinlock);
	res = FUNC0(dlm, name, len, hash);
	FUNC3(&dlm->spinlock);
	return res;
}