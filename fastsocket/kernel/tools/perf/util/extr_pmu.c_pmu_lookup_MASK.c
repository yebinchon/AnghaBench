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
struct perf_pmu {int /*<<< orphan*/  list; int /*<<< orphan*/  type; int /*<<< orphan*/  name; int /*<<< orphan*/  aliases; int /*<<< orphan*/  format; int /*<<< orphan*/  cpus; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aliases ; 
 int /*<<< orphan*/  format ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmus ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct perf_pmu* FUNC9 (int) ; 

__attribute__((used)) static struct perf_pmu *FUNC10(char *name)
{
	struct perf_pmu *pmu;
	FUNC1(format);
	FUNC1(aliases);
	__u32 type;

	/*
	 * The pmu data we store & need consists of the pmu
	 * type value and format definitions. Load both right
	 * now.
	 */
	if (FUNC6(name, &format))
		return NULL;

	if (FUNC4(name, &aliases))
		return NULL;

	if (FUNC7(name, &type))
		return NULL;

	pmu = FUNC9(sizeof(*pmu));
	if (!pmu)
		return NULL;

	pmu->cpus = FUNC5(name);

	FUNC0(&pmu->format);
	FUNC0(&pmu->aliases);
	FUNC3(&format, &pmu->format);
	FUNC3(&aliases, &pmu->aliases);
	pmu->name = FUNC8(name);
	pmu->type = type;
	FUNC2(&pmu->list, &pmus);
	return pmu;
}