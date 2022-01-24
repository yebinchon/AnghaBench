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
struct perf_hpp {char* buf; size_t size; } ;
struct hists {int dummy; } ;
struct hist_entry {int dummy; } ;
typedef  int /*<<< orphan*/  bf ;
struct TYPE_2__ {scalar_t__ use_callchain; int /*<<< orphan*/  field_sep; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC1 (struct hist_entry*,struct hists*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct perf_hpp*,struct hist_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hist_entry*,char*,size_t,struct hists*) ; 
 TYPE_1__ symbol_conf ; 

__attribute__((used)) static int FUNC4(struct hist_entry *he, size_t size,
			       struct hists *hists, FILE *fp)
{
	char bf[512];
	int ret;
	struct perf_hpp hpp = {
		.buf		= bf,
		.size		= size,
	};
	bool color = !symbol_conf.field_sep;

	if (size == 0 || size > sizeof(bf))
		size = hpp.size = sizeof(bf);

	ret = FUNC2(&hpp, he, color);
	FUNC3(he, bf + ret, size - ret, hists);

	ret = FUNC0(fp, "%s\n", bf);

	if (symbol_conf.use_callchain)
		ret += FUNC1(he, hists, fp);

	return ret;
}