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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned char*,int,int,int,unsigned char*) ; 
 size_t SHA_DIGEST_LEN ; 
 int FUNC1 (char*) ; 

int FUNC2(char *password, unsigned char *ssid, int ssidlength, unsigned char *output)
{
    if ((FUNC1(password) > 63) || (ssidlength > 32))
        return 0;

    FUNC0(password, ssid, ssidlength, 4096, 1, output);
    FUNC0(password, ssid, ssidlength, 4096, 2, &output[SHA_DIGEST_LEN]);
    return 1;
}