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
struct TYPE_3__ {int asn1len; int len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ br_asn1_uint ;

/* Variables and functions */
 int FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 

size_t
FUNC2(void *dest, br_asn1_uint pp)
{
	unsigned char *buf;
	size_t lenlen;

	if (dest == NULL) {
		return 1 + FUNC0(NULL, pp.asn1len) + pp.asn1len;
	}
	buf = dest;
	*buf ++ = 0x02;
	lenlen = FUNC0(buf, pp.asn1len);
	buf += lenlen;
	*buf = 0x00;
	FUNC1(buf + pp.asn1len - pp.len, pp.data, pp.len);
	return 1 + lenlen + pp.asn1len;
}