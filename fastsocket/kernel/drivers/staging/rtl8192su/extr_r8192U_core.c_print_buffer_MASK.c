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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(u32 *buffer, int len)
{
	int i;
	u8 *buf =(u8*)buffer;

	FUNC0("ASCII BUFFER DUMP (len: %x):\n",len);

	for(i=0;i<len;i++)
		FUNC0("%c",buf[i]);

	FUNC0("\nBINARY BUFFER DUMP (len: %x):\n",len);

	for(i=0;i<len;i++)
		FUNC0("%x",buf[i]);

	FUNC0("\n");
}