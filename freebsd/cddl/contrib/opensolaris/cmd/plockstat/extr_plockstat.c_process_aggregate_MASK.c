#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint_t ;
typedef  int uint64_t ;
typedef  char* u_longlong_t ;
struct ps_prochandle {int dummy; } ;
typedef  int pid_t ;
struct TYPE_6__ {scalar_t__ dtrd_offset; } ;
typedef  TYPE_2__ dtrace_recdesc_t ;
struct TYPE_7__ {TYPE_1__* dtada_desc; scalar_t__ dtada_data; } ;
typedef  TYPE_3__ dtrace_aggdata_t ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {TYPE_2__* dtagd_rec; } ;

/* Variables and functions */
 int DTRACE_AGGWALK_NEXT ; 
 int DTRACE_QUANTIZE_NBUCKETS ; 
 int DTRACE_QUANTIZE_ZEROBUCKET ; 
 int /*<<< orphan*/  PGRAB_RDONLY ; 
 struct ps_prochandle* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ps_prochandle*) ; 
 int /*<<< orphan*/  g_dtp ; 
 scalar_t__ g_nent ; 
 int g_nframes ; 
 scalar_t__ g_opt_s ; 
 scalar_t__ FUNC2 (struct ps_prochandle*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int
FUNC7(const dtrace_aggdata_t **aggsdata, int naggvars, void *arg)
{
	const dtrace_recdesc_t *rec;
	uintptr_t lock;
	uint64_t *stack;
	caddr_t data;
	pid_t pid;
	struct ps_prochandle *P;
	char buf[256];
	int i, j;
	uint64_t sum, count, avg;

	if ((*(uint_t *)arg)++ >= g_nent)
		return (DTRACE_AGGWALK_NEXT);

	rec = aggsdata[0]->dtada_desc->dtagd_rec;
	data = aggsdata[0]->dtada_data;

	/*LINTED - alignment*/
	lock = (uintptr_t)*(uint64_t *)(data + rec[1].dtrd_offset);
	/*LINTED - alignment*/
	stack = (uint64_t *)(data + rec[2].dtrd_offset);

	if (!g_opt_s) {
		/*LINTED - alignment*/
		sum = *(uint64_t *)(aggsdata[1]->dtada_data +
		    aggsdata[1]->dtada_desc->dtagd_rec[3].dtrd_offset);
		/*LINTED - alignment*/
		count = *(uint64_t *)(aggsdata[2]->dtada_data +
		    aggsdata[2]->dtada_desc->dtagd_rec[3].dtrd_offset);
	} else {
		uint64_t *a;

		/*LINTED - alignment*/
		a = (uint64_t *)(aggsdata[1]->dtada_data +
		    aggsdata[1]->dtada_desc->dtagd_rec[3].dtrd_offset);

		FUNC3();
		FUNC5();

		for (count = sum = 0, i = DTRACE_QUANTIZE_ZEROBUCKET, j = 0;
		    i < DTRACE_QUANTIZE_NBUCKETS; i++, j++) {
			count += a[i];
			sum += a[i] << (j - 64);
		}
	}

	avg = sum / count;
	(void) FUNC6("%5llu %8llu ", (u_longlong_t)count, (u_longlong_t)avg);

	pid = stack[0];
	P = FUNC0(g_dtp, pid, PGRAB_RDONLY);

	(void) FUNC2(P, lock, buf, sizeof (buf), 0);
	(void) FUNC6("%-28s ", buf);

	for (i = 2; i <= 5; i++) {
		if (FUNC2(P, stack[i], buf, sizeof (buf), 1) == 0)
			break;
	}
	(void) FUNC6("%s\n", buf);

	if (g_opt_s) {
		int stack_done = 0;
		int quant_done = 0;
		int first_bin, last_bin;
		uint64_t bin_size, *a;

		/*LINTED - alignment*/
		a = (uint64_t *)(aggsdata[1]->dtada_data +
		    aggsdata[1]->dtada_desc->dtagd_rec[3].dtrd_offset);

		FUNC4();

		for (first_bin = DTRACE_QUANTIZE_ZEROBUCKET;
		    a[first_bin] == 0; first_bin++)
			continue;
		for (last_bin = DTRACE_QUANTIZE_ZEROBUCKET + 63;
		    a[last_bin] == 0; last_bin--)
			continue;

		for (i = 0; !stack_done || !quant_done; i++) {
			if (!stack_done) {
				(void) FUNC2(P, stack[i + 2], buf,
				    sizeof (buf), 0);
			} else {
				buf[0] = '\0';
			}

			if (!quant_done) {
				bin_size = a[first_bin];

				(void) FUNC6("%10llu |%-24.*s| %5llu %s\n",
				    1ULL <<
				    (first_bin - DTRACE_QUANTIZE_ZEROBUCKET),
				    (int)(24.0 * bin_size / count),
				    "@@@@@@@@@@@@@@@@@@@@@@@@@@",
				    (u_longlong_t)bin_size, buf);
			} else {
				(void) FUNC6("%43s %s\n", "", buf);
			}

			if (i + 1 >= g_nframes || stack[i + 3] == 0)
				stack_done = 1;

			if (first_bin++ == last_bin)
				quant_done = 1;
		}
	}

	FUNC1(g_dtp, P);

	return (DTRACE_AGGWALK_NEXT);
}