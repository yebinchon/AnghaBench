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
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned short,unsigned short,unsigned short) ; 
 scalar_t__ EIO ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (unsigned short,unsigned char*,int) ; 

__attribute__((used)) static int32_t FUNC3(unsigned short saddr, unsigned short baddr,
	unsigned short bdata)
{
	int32_t rc = -EIO;
	unsigned char buf[2];

	FUNC1(buf, 0, sizeof(buf));
	buf[0] = baddr;
	buf[1] = bdata;
	rc = FUNC2(saddr, buf, 2);

	if (rc < 0)
		FUNC0("i2c_write failed, saddr = 0x%x addr = 0x%x, val =0x%x!\n",
		saddr, baddr, bdata);

	return rc;
}