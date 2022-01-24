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
typedef  size_t UINT ;
struct TYPE_2__ {int /*<<< orphan*/  bValid; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 size_t CB_MAX_CHANNEL ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* sChannelTbl ; 

BOOL
FUNC0(UINT CountryCode, UINT ChannelIndex)
{
    BOOL    bValid;

    bValid = FALSE;
    /*
     * If Channel Index is invalid, return invalid
     */
    if ((ChannelIndex > CB_MAX_CHANNEL) ||
        (ChannelIndex == 0))
    {
        bValid = FALSE;
        goto exit;
    }

    bValid = sChannelTbl[ChannelIndex].bValid;

exit:
    return (bValid);

}