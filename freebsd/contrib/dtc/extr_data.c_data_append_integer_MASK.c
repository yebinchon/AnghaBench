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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct data FUNC3 (struct data,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

struct data FUNC5(struct data d, uint64_t value, int bits)
{
	uint8_t value_8;
	uint16_t value_16;
	uint32_t value_32;
	uint64_t value_64;

	switch (bits) {
	case 8:
		value_8 = value;
		return FUNC3(d, &value_8, 1);

	case 16:
		value_16 = FUNC0(value);
		return FUNC3(d, &value_16, 2);

	case 32:
		value_32 = FUNC1(value);
		return FUNC3(d, &value_32, 4);

	case 64:
		value_64 = FUNC2(value);
		return FUNC3(d, &value_64, 8);

	default:
		FUNC4("Invalid literal size (%d)\n", bits);
	}
}