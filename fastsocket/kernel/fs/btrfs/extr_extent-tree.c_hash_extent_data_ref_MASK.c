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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  lenum ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u64 FUNC2(u64 root_objectid, u64 owner, u64 offset)
{
	u32 high_crc = ~(u32)0;
	u32 low_crc = ~(u32)0;
	__le64 lenum;

	lenum = FUNC0(root_objectid);
	high_crc = FUNC1(high_crc, &lenum, sizeof(lenum));
	lenum = FUNC0(owner);
	low_crc = FUNC1(low_crc, &lenum, sizeof(lenum));
	lenum = FUNC0(offset);
	low_crc = FUNC1(low_crc, &lenum, sizeof(lenum));

	return ((u64)high_crc << 31) ^ (u64)low_crc;
}