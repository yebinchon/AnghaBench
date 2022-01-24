#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ vs_state; scalar_t__ vs_aux; } ;
typedef  TYPE_1__ vdev_stat_t ;
typedef  int /*<<< orphan*/  uint_t ;

/* Variables and functions */
 scalar_t__ VDEV_AUX_OPEN_FAILED ; 
 scalar_t__ VDEV_STATE_CANT_OPEN ; 

__attribute__((used)) static int
FUNC0(vdev_stat_t *vs, uint_t vsc)
{
	return (vs->vs_state == VDEV_STATE_CANT_OPEN &&
	    vs->vs_aux == VDEV_AUX_OPEN_FAILED);
}