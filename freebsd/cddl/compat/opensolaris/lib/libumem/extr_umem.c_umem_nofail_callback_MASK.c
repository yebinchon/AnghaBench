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
typedef  int /*<<< orphan*/  umem_nofail_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/ * nofail_cb ; 

void FUNC0(umem_nofail_callback_t *callback)
{
	nofail_cb = callback;
}