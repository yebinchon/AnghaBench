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
struct TYPE_2__ {int /*<<< orphan*/ * node; } ;
struct watch_adapter {int /*<<< orphan*/ * token; TYPE_1__ watch; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct watch_adapter*) ; 
 void* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 struct watch_adapter* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct watch_adapter *FUNC3(const char *path,
						 const char *token)
{
	struct watch_adapter *watch;

	watch = FUNC2(sizeof(*watch), GFP_KERNEL);
	if (watch == NULL)
		goto out_fail;

	watch->watch.node = FUNC1(path, GFP_KERNEL);
	if (watch->watch.node == NULL)
		goto out_free;

	watch->token = FUNC1(token, GFP_KERNEL);
	if (watch->token == NULL)
		goto out_free;

	return watch;

out_free:
	FUNC0(watch);

out_fail:
	return NULL;
}