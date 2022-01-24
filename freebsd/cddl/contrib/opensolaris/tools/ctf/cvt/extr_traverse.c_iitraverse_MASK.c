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
typedef  int /*<<< orphan*/  tdtrav_data_t ;
typedef  int /*<<< orphan*/  tdtrav_cb_f ;
typedef  int /*<<< orphan*/  iidesc_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 

int
FUNC2(iidesc_t *ii, int *vgenp, tdtrav_cb_f *firstops, tdtrav_cb_f *preops,
    tdtrav_cb_f *postops, void *private)
{
	tdtrav_data_t tdtd;

	FUNC1(&tdtd, vgenp, firstops, preops, postops, private);

	return (FUNC0(ii, &tdtd));
}