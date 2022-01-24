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
struct perf_record {int bytes_written; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static int FUNC2(struct perf_record *rec, void *buf, size_t size)
{
	while (size) {
		int ret = FUNC1(rec->output, buf, size);

		if (ret < 0) {
			FUNC0("failed to write\n");
			return -1;
		}

		size -= ret;
		buf += ret;

		rec->bytes_written += ret;
	}

	return 0;
}