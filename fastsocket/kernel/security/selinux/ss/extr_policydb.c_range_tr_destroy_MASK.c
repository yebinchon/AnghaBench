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
struct mls_range {TYPE_1__* level; } ;
struct TYPE_2__ {int /*<<< orphan*/  cat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(void *key, void *datum, void *p)
{
	struct mls_range *rt = datum;
	FUNC2(key);
	FUNC1(&rt->level[0].cat);
	FUNC1(&rt->level[1].cat);
	FUNC2(datum);
	FUNC0();
	return 0;
}