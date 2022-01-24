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
struct pyrf_cpu_map {TYPE_1__* ob_type; int /*<<< orphan*/  cpus; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* tp_free ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct pyrf_cpu_map *pcpus)
{
	FUNC0(pcpus->cpus);
	pcpus->ob_type->tp_free((PyObject*)pcpus);
}