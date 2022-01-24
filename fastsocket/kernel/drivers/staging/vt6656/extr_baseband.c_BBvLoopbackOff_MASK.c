#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int byBBCRc9; int byBBCR88; int byBBCR09; int byBBCR4d; scalar_t__ wCurrentRate; } ;
typedef  TYPE_1__* PSDevice ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  MESSAGE_REQUEST_BBREG ; 
 scalar_t__ RATE_11M ; 

void FUNC2 (PSDevice pDevice)
{
    BYTE      byData;

    FUNC1(pDevice, MESSAGE_REQUEST_BBREG, 0xC9, pDevice->byBBCRc9);//CR201
    FUNC1(pDevice, MESSAGE_REQUEST_BBREG, 0x88, pDevice->byBBCR88);//CR136
    FUNC1(pDevice, MESSAGE_REQUEST_BBREG, 0x09, pDevice->byBBCR09);//CR136
    FUNC1(pDevice, MESSAGE_REQUEST_BBREG, 0x4D, pDevice->byBBCR4d);//CR77

    if (pDevice->wCurrentRate <= RATE_11M) { // CCK
        // Set the CR33 Bit2 to disable internal Loopback.
        FUNC0 (pDevice, MESSAGE_REQUEST_BBREG, 0x21, &byData);//CR33
        FUNC1(pDevice, MESSAGE_REQUEST_BBREG, 0x21, (BYTE)(byData & 0xFE));//CR33
    }
    else { // OFDM
        FUNC0 (pDevice, MESSAGE_REQUEST_BBREG, 0x9A, &byData);//CR154
        FUNC1(pDevice, MESSAGE_REQUEST_BBREG, 0x9A, (BYTE)(byData & 0xFE));//CR154
    }
    FUNC0 (pDevice, MESSAGE_REQUEST_BBREG, 0x0E, &byData);//CR14
    FUNC1(pDevice, MESSAGE_REQUEST_BBREG, 0x0E, (BYTE)(byData | 0x80));//CR14

}