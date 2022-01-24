#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  u8_t ;
typedef  size_t u16_t ;
struct TYPE_7__ {size_t countryCode; size_t regDmnEnum; scalar_t__ isoName; } ;
struct TYPE_5__ {size_t regionCode; } ;
struct TYPE_6__ {TYPE_1__ regulationTable; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_3__*) ; 
 TYPE_3__* allCountries ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(zdev_t* dev, u16_t CountryCode)
{
    u16_t i;
    u16_t c_lo = 2000, c_hi = 6000; //default channel is all enable
    u16_t RegDomain;

    FUNC5(dev);

    FUNC4();

    for (i = 0; i < FUNC0(allCountries); i++)
    {
        if (CountryCode == allCountries[i].countryCode)
        {
            RegDomain = allCountries[i].regDmnEnum;

            // read the ACU country code from EEPROM
            FUNC1(dev, (u8_t*)allCountries[i].isoName);

            //zm_debug_msg_s("CWY - Country Name = ", allCountries[i].name);

            if (wd->regulationTable.regionCode != RegDomain)
            {
                //zm_debug_msg0("CWY - Change regulatory table");

                FUNC2(dev, RegDomain, c_lo, c_hi);
            }
            return;
        }
    }
    FUNC3("Invalid CountryCode = ", CountryCode);
}