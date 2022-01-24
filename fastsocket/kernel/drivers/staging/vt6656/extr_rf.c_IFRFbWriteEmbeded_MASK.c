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
typedef  int /*<<< orphan*/  PSDevice ;
typedef  int DWORD ;
typedef  scalar_t__ BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  MESSAGE_TYPE_WRITE_IFRF ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC1 (PSDevice pDevice, DWORD dwData)
{
    BYTE        pbyData[4];

    pbyData[0] = (BYTE)dwData;
    pbyData[1] = (BYTE)(dwData>>8);
    pbyData[2] = (BYTE)(dwData>>16);
    pbyData[3] = (BYTE)(dwData>>24);
    FUNC0(pDevice,
                    MESSAGE_TYPE_WRITE_IFRF,
                    0,
                    0,
                    4,
                    pbyData
                        );


    return TRUE;
}