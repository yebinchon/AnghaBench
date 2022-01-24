#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  u32_t ;
struct TYPE_4__ {int /*<<< orphan*/  ns_avgbrssi; } ;
struct TYPE_5__ {TYPE_1__ ast_nodestats; } ;
struct zsHpPriv {TYPE_2__ stats; } ;
struct TYPE_6__ {struct zsHpPriv* hpPrivate; } ;

/* Variables and functions */
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

u32_t FUNC1(zdev_t* dev, u8_t rssi)
{
    struct zsHpPriv* hpPriv;

    FUNC0(dev);
    hpPriv=wd->hpPrivate;

    hpPriv->stats.ast_nodestats.ns_avgbrssi = rssi;

    return 0;
}