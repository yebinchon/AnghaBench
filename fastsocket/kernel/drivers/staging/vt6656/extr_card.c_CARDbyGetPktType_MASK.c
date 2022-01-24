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
struct TYPE_3__ {scalar_t__ byBBType; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PSDevice ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ BB_TYPE_11A ; 
 scalar_t__ BB_TYPE_11B ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  PK_TYPE_11GA ; 
 int /*<<< orphan*/  PK_TYPE_11GB ; 

BYTE FUNC1 (PVOID pDeviceHandler)
{
    PSDevice    pDevice = (PSDevice) pDeviceHandler;

    if (pDevice->byBBType == BB_TYPE_11A || pDevice->byBBType == BB_TYPE_11B) {
        return (BYTE)pDevice->byBBType;
    }
    else if (FUNC0(pDevice)) {
        return PK_TYPE_11GA;
    }
    else {
        return PK_TYPE_11GB;
    }
}