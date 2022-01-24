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
struct xdr_netobj {scalar_t__ len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,scalar_t__) ; 

void
FUNC2(struct xdr_netobj *mech, int body_size, unsigned char **buf)
{
	*(*buf)++ = 0x60;
	FUNC1(buf, 2 + mech->len + body_size);
	*(*buf)++ = 0x06;
	*(*buf)++ = (unsigned char) mech->len;
	FUNC0(*buf, mech->data, ((int) mech->len));
}