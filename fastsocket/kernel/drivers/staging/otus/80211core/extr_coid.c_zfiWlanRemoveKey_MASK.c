#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int u8_t ;
typedef  int /*<<< orphan*/  u32_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct TYPE_3__ {void* encryMode; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;

/* Variables and functions */
 void* ZM_NO_WEP ; 
 int ZM_USER_KEY_DEFAULT ; 
 int /*<<< orphan*/  ZM_USER_KEY_GK ; 
 int /*<<< orphan*/  ZM_USER_KEY_PK ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(zdev_t* dev, u8_t keyType, u8_t keyId)
{
    u16_t  fakeMacAddr[3] = {0, 0, 0};
    u32_t  fakeKey[4] = {0, 0, 0, 0};

    FUNC3(dev);

    if ( keyType == 0 )
    {
        /* remove WEP key */
        FUNC2("remove WEP key");
        FUNC0(dev, ZM_USER_KEY_DEFAULT+keyId, 0,
                 ZM_NO_WEP, fakeMacAddr, fakeKey);
        wd->sta.encryMode = ZM_NO_WEP;
    }
    else if ( keyType == 1 )
    {
        /* remove pairwise key */
        FUNC2("remove pairwise key");
        FUNC1(dev, ZM_USER_KEY_PK);
        wd->sta.encryMode = ZM_NO_WEP;
    }
    else
    {
        /* remove group key */
        FUNC2("remove group key");
        FUNC1(dev, ZM_USER_KEY_GK);
    }
}