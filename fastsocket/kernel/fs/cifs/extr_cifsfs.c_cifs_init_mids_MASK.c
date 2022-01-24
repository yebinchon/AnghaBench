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
struct mid_q_entry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 int /*<<< orphan*/ * cifs_mid_cachep ; 
 int /*<<< orphan*/ * cifs_mid_poolp ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(void)
{
	cifs_mid_cachep = FUNC0("cifs_mpx_ids",
					    sizeof(struct mid_q_entry), 0,
					    SLAB_HWCACHE_ALIGN, NULL);
	if (cifs_mid_cachep == NULL)
		return -ENOMEM;

	/* 3 is a reasonable minimum number of simultaneous operations */
	cifs_mid_poolp = FUNC2(3, cifs_mid_cachep);
	if (cifs_mid_poolp == NULL) {
		FUNC1(cifs_mid_cachep);
		return -ENOMEM;
	}

	return 0;
}