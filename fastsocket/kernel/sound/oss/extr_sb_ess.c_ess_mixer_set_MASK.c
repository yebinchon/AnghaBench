#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int recmask; int /*<<< orphan*/  submodel; } ;
typedef  TYPE_1__ sb_devc ;

/* Variables and functions */
 int ES_REC_MIXER_RECDIFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int,int,int) ; 

int FUNC2(sb_devc *devc, int dev, int left, int right)
{
	if (FUNC0 (devc->submodel) && (devc->recmask & (1 << dev))) {
		FUNC1 (devc, dev + ES_REC_MIXER_RECDIFF, left, right);
	}
	return FUNC1 (devc, dev, left, right);
}