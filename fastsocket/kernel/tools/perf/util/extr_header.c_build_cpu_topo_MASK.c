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
typedef  size_t u32 ;
struct cpu_topo {size_t core_sib; char** core_siblings; size_t thread_sib; char** thread_siblings; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* CORE_SIB_FMT ; 
 int MAXPATHLEN ; 
 char* THRD_SIB_FMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static int FUNC7(struct cpu_topo *tp, int cpu)
{
	FILE *fp;
	char filename[MAXPATHLEN];
	char *buf = NULL, *p;
	size_t len = 0;
	u32 i = 0;
	int ret = -1;

	FUNC4(filename, CORE_SIB_FMT, cpu);
	fp = FUNC1(filename, "r");
	if (!fp)
		return -1;

	if (FUNC3(&buf, &len, fp) <= 0)
		goto done;

	FUNC0(fp);

	p = FUNC5(buf, '\n');
	if (p)
		*p = '\0';

	for (i = 0; i < tp->core_sib; i++) {
		if (!FUNC6(buf, tp->core_siblings[i]))
			break;
	}
	if (i == tp->core_sib) {
		tp->core_siblings[i] = buf;
		tp->core_sib++;
		buf = NULL;
		len = 0;
	}

	FUNC4(filename, THRD_SIB_FMT, cpu);
	fp = FUNC1(filename, "r");
	if (!fp)
		goto done;

	if (FUNC3(&buf, &len, fp) <= 0)
		goto done;

	p = FUNC5(buf, '\n');
	if (p)
		*p = '\0';

	for (i = 0; i < tp->thread_sib; i++) {
		if (!FUNC6(buf, tp->thread_siblings[i]))
			break;
	}
	if (i == tp->thread_sib) {
		tp->thread_siblings[i] = buf;
		tp->thread_sib++;
		buf = NULL;
	}
	ret = 0;
done:
	if(fp)
		FUNC0(fp);
	FUNC2(buf);
	return ret;
}