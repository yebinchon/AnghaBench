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
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,unsigned char const*,int) ; 
 int FUNC1 (scalar_t__*) ; 
 int FUNC2 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*) ; 

int
FUNC5(const unsigned char *passwd, unsigned char *p16)
{
	int rc;
	int len;
	__u16 wpwd[129];

	/* Password cannot be longer than 128 characters */
	if (passwd) {
		len = FUNC4((char *) passwd);
		if (len > 128)
			len = 128;

		/* Password must be converted to NT unicode */
		FUNC0(wpwd, passwd, len);
	} else
		len = 0;

	wpwd[len] = 0;	/* Ensure string is null terminated */
	/* Calculate length in bytes */
	len = FUNC1(wpwd) * sizeof(__u16);

	rc = FUNC2(p16, (unsigned char *) wpwd, len);
	FUNC3(wpwd, 0, 129 * 2);

	return rc;
}