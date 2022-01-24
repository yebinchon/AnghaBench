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
typedef  int u32 ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int DBG_DATA_MSG ; 
 int const TD_STATUS ; 
 int const TD_TOTAL_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,int) ; 

__attribute__((used)) static void FUNC3(u8 addr, const u32 token, int status)
{
	char msg[DBG_DATA_MSG];

	FUNC2(msg, sizeof(msg), "%d %02X",
		  (int)(token & TD_TOTAL_BYTES) >> FUNC1(TD_TOTAL_BYTES),
		  (int)(token & TD_STATUS)      >> FUNC1(TD_STATUS));
	FUNC0(addr, "DONE", status, msg);
}