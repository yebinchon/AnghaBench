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
struct perf_session {int /*<<< orphan*/  machines; int /*<<< orphan*/  host_machine; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

size_t FUNC2(struct perf_session *self, FILE *fp,
					  bool with_hits)
{
	size_t ret = FUNC0(&self->host_machine, fp, with_hits);
	return ret + FUNC1(&self->machines, fp, with_hits);
}