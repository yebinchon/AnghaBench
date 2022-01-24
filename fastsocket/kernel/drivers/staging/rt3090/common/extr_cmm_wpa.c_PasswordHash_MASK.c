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
typedef  int /*<<< orphan*/ * PUCHAR ;
typedef  int /*<<< orphan*/  PSTRING ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *) ; 
 size_t SHA1_DIGEST_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(PSTRING password, PUCHAR ssid, INT ssidlength, PUCHAR output)
{
    if ((FUNC1(password) > 63) || (ssidlength > 32))
        return 0;

    FUNC0(password, ssid, ssidlength, 4096, 1, output);
    FUNC0(password, ssid, ssidlength, 4096, 2, &output[SHA1_DIGEST_SIZE]);
    return 1;
}