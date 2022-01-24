#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cred {int /*<<< orphan*/  magic; int /*<<< orphan*/  usage; TYPE_1__* tgcred; } ;
struct TYPE_2__ {int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRED_MAGIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cred*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cred_jar ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cred*) ; 
 struct cred* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct cred*,int /*<<< orphan*/ ) ; 

struct cred *FUNC6(void)
{
	struct cred *new;

	new = FUNC3(cred_jar, GFP_KERNEL);
	if (!new)
		return NULL;

#ifdef CONFIG_KEYS
	new->tgcred = kzalloc(sizeof(*new->tgcred), GFP_KERNEL);
	if (!new->tgcred) {
		kmem_cache_free(cred_jar, new);
		return NULL;
	}
	atomic_set(&new->tgcred->usage, 1);
#endif

	FUNC1(&new->usage, 1);

	if (FUNC5(new, GFP_KERNEL) < 0)
		goto error;

#ifdef CONFIG_DEBUG_CREDENTIALS
	new->magic = CRED_MAGIC;
#endif
	return new;

error:
	FUNC0(new);
	return NULL;
}