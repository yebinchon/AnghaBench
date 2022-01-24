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
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,unsigned char*,int,unsigned char*,int) ; 
 int SHA1_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(char *password, unsigned char *ssid, int ssidlength, int iterations, int count, unsigned char *output)
{
    unsigned char digest[36], digest1[SHA1_DIGEST_SIZE];
    int i, j;

    /* U1 = PRF(P, S || int(i)) */
    FUNC1(digest, ssid, ssidlength);
    digest[ssidlength] = (unsigned char)((count>>24) & 0xff);
    digest[ssidlength+1] = (unsigned char)((count>>16) & 0xff);
    digest[ssidlength+2] = (unsigned char)((count>>8) & 0xff);
    digest[ssidlength+3] = (unsigned char)(count & 0xff);
    FUNC0((unsigned char*) password, (int) FUNC2(password), digest, ssidlength+4, digest1, SHA1_DIGEST_SIZE); // for WPA update

    /* output = U1 */
    FUNC1(output, digest1, SHA1_DIGEST_SIZE);

    for (i = 1; i < iterations; i++)
    {
        /* Un = PRF(P, Un-1) */
        FUNC0((unsigned char*) password, (int) FUNC2(password), digest1, SHA1_DIGEST_SIZE, digest, SHA1_DIGEST_SIZE); // for WPA update
        FUNC1(digest1, digest, SHA1_DIGEST_SIZE);

        /* output = output xor Un */
        for (j = 0; j < SHA1_DIGEST_SIZE; j++)
        {
            output[j] ^= digest[j];
        }
    }
}