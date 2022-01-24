#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  zc_time; int /*<<< orphan*/  zc_count; } ;
typedef  TYPE_1__ ztest_shared_callstate_t ;
struct TYPE_9__ {int zi_iters; int /*<<< orphan*/  (* zi_func ) (int /*<<< orphan*/ *,size_t) ;} ;
typedef  TYPE_2__ ztest_info_t ;
typedef  int /*<<< orphan*/  ztest_ds_t ;
typedef  size_t uint64_t ;
typedef  int hrtime_t ;
struct TYPE_11__ {size_t zo_datasets; int zo_verbose; } ;
struct TYPE_10__ {char* dli_sname; } ;
typedef  TYPE_3__ Dl_info ;

/* Variables and functions */
 double NANOSEC ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,TYPE_3__*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,double,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * ztest_ds ; 
 TYPE_4__ ztest_opts ; 

__attribute__((used)) static void
FUNC6(int test, ztest_info_t *zi, uint64_t id)
{
	ztest_ds_t *zd = &ztest_ds[id % ztest_opts.zo_datasets];
	ztest_shared_callstate_t *zc = FUNC0(test);
	hrtime_t functime = FUNC3();

	for (int i = 0; i < zi->zi_iters; i++)
		zi->zi_func(zd, id);

	functime = FUNC3() - functime;

	FUNC1(&zc->zc_count, 1);
	FUNC1(&zc->zc_time, functime);

	if (ztest_opts.zo_verbose >= 4) {
		Dl_info dli;
		(void) FUNC2((void *)zi->zi_func, &dli);
		(void) FUNC4("%6.2f sec in %s\n",
		    (double)functime / NANOSEC, dli.dli_sname);
	}
}