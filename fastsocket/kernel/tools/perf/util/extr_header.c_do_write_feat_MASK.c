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
struct perf_header {int dummy; } ;
struct perf_file_section {void* offset; void* size; } ;
struct perf_evlist {int dummy; } ;
struct TYPE_2__ {int (* write ) (int,struct perf_header*,struct perf_evlist*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_1__* feat_ops ; 
 void* FUNC0 (int,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct perf_header*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int,struct perf_header*,struct perf_evlist*) ; 

__attribute__((used)) static int FUNC4(int fd, struct perf_header *h, int type,
			 struct perf_file_section **p,
			 struct perf_evlist *evlist)
{
	int err;
	int ret = 0;

	if (FUNC1(h, type)) {
		if (!feat_ops[type].write)
			return -1;

		(*p)->offset = FUNC0(fd, 0, SEEK_CUR);

		err = feat_ops[type].write(fd, h, evlist);
		if (err < 0) {
			FUNC2("failed to write feature %d\n", type);

			/* undo anything written */
			FUNC0(fd, (*p)->offset, SEEK_SET);

			return -1;
		}
		(*p)->size = FUNC0(fd, 0, SEEK_CUR) - (*p)->offset;
		(*p)++;
	}
	return ret;
}