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
struct perf_annotate {int /*<<< orphan*/  full_paths; int /*<<< orphan*/  print_line; } ;
struct TYPE_2__ {int /*<<< orphan*/  map; int /*<<< orphan*/  sym; } ;
struct hist_entry {TYPE_1__ ms; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct hist_entry *he, int evidx,
				    struct perf_annotate *ann)
{
	return FUNC0(he->ms.sym, he->ms.map, evidx,
				    ann->print_line, ann->full_paths, 0, 0);
}