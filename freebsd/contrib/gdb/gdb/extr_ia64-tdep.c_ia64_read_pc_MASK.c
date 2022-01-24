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
typedef  int /*<<< orphan*/  ptid_t ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  IA64_IP_REGNUM ; 
 int /*<<< orphan*/  IA64_PSR_REGNUM ; 
 int SLOT_MULTIPLIER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CORE_ADDR
FUNC1 (ptid_t ptid)
{
  CORE_ADDR psr_value = FUNC0 (IA64_PSR_REGNUM, ptid);
  CORE_ADDR pc_value   = FUNC0 (IA64_IP_REGNUM, ptid);
  int slot_num = (psr_value >> 41) & 3;

  return pc_value | (slot_num * SLOT_MULTIPLIER);
}