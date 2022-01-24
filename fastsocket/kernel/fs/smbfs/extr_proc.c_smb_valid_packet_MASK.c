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
typedef  int __u8 ;

/* Variables and functions */
 scalar_t__ SMB_HEADER_LEN ; 
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int*) ; 

__attribute__((used)) static int
FUNC3(__u8 * packet)
{
	return (packet[4] == 0xff
		&& packet[5] == 'S'
		&& packet[6] == 'M'
		&& packet[7] == 'B'
		&& (FUNC2(packet) + 4 == SMB_HEADER_LEN
		    + FUNC0(packet) * 2 + FUNC1(packet)));
}