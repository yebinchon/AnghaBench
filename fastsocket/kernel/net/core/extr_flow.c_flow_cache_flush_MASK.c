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
struct flow_flush_info {int /*<<< orphan*/  completion; int /*<<< orphan*/  cpuleft; int /*<<< orphan*/ * cache; } ;
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flow_cache_flush_per_cpu ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  flow_cache_global ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct flow_flush_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(void)
{
	struct flow_flush_info info;
	static DEFINE_MUTEX(flow_flush_sem);

	/* Don't want cpus going down or up during this. */
	FUNC2();
	FUNC6(&flow_flush_sem);
	info.cache = &flow_cache_global;
	FUNC0(&info.cpuleft, FUNC8());
	FUNC3(&info.completion);

	FUNC4();
	FUNC10(flow_cache_flush_per_cpu, &info, 0);
	FUNC1((unsigned long)&info);
	FUNC5();

	FUNC11(&info.completion);
	FUNC7(&flow_flush_sem);
	FUNC9();
}