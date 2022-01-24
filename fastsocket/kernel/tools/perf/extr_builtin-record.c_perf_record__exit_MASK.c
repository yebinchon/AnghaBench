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
struct TYPE_5__ {int /*<<< orphan*/  pipe_output; } ;
struct perf_record {int /*<<< orphan*/  evlist; TYPE_3__* session; int /*<<< orphan*/  output; int /*<<< orphan*/  no_buildid; scalar_t__ bytes_written; TYPE_1__ opts; } ;
struct TYPE_6__ {int /*<<< orphan*/  data_size; } ;
struct TYPE_7__ {TYPE_2__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_record*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(int status, void *arg)
{
	struct perf_record *rec = arg;

	if (status != 0)
		return;

	if (!rec->opts.pipe_output) {
		rec->session->header.data_size += rec->bytes_written;

		if (!rec->no_buildid)
			FUNC3(rec);
		FUNC2(rec->session, rec->evlist,
					   rec->output, true);
		FUNC1(rec->session);
		FUNC0(rec->evlist);
		FUNC4();
	}
}