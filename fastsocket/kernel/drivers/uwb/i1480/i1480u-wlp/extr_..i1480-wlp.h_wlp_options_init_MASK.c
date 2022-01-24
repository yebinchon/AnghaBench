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
struct TYPE_4__ {int /*<<< orphan*/  prid; } ;
struct wlp_options {TYPE_1__ def_tx_hdr; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  UWB_ACK_INM ; 
 int /*<<< orphan*/  UWB_PHY_RATE_480 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static inline
void FUNC5(struct wlp_options *options)
{
	FUNC1(&options->mutex);
	FUNC2(&options->def_tx_hdr, UWB_ACK_INM);
	FUNC4(&options->def_tx_hdr, 1);
	/* FIXME: default to phy caps */
	FUNC3(&options->def_tx_hdr, UWB_PHY_RATE_480);
#ifndef WLP_HDR_FMT_2
	options->def_tx_hdr.prid = FUNC0(0x0000);
#endif
}