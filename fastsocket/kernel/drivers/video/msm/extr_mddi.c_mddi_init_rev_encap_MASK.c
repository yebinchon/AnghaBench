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
struct mddi_info {int /*<<< orphan*/  rev_addr; int /*<<< orphan*/  rev_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  MDDI_CMD_FORCE_NEW_REV_PTR ; 
 int /*<<< orphan*/  MDDI_INT_NO_CMD_PKTS_PEND ; 
 int /*<<< orphan*/  MDDI_REV_BUFFER_SIZE ; 
 int /*<<< orphan*/  REV_PTR ; 
 int /*<<< orphan*/  FUNC0 (struct mddi_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mddi_info *mddi)
{
	FUNC2(mddi->rev_data, 0xee, MDDI_REV_BUFFER_SIZE);
	FUNC1(mddi->rev_addr, REV_PTR);
	FUNC1(MDDI_CMD_FORCE_NEW_REV_PTR, CMD);
	FUNC0(mddi, MDDI_INT_NO_CMD_PKTS_PEND);
}