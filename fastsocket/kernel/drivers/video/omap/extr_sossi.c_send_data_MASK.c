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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  SOSSI_FIFO_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC3(const void *data, unsigned int len)
{
	while (len >= 4) {
		FUNC0(SOSSI_FIFO_REG, *(const u32 *) data);
		len -= 4;
		data += 4;
	}
	while (len >= 2) {
		FUNC1(SOSSI_FIFO_REG, *(const u16 *) data);
		len -= 2;
		data += 2;
	}
	while (len) {
		FUNC2(SOSSI_FIFO_REG, *(const u8 *) data);
		len--;
		data++;
	}
}