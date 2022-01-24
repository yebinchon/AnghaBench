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
typedef  size_t u8 ;
struct onyx {size_t* cache; int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 size_t FIRSTREGISTER ; 
 int FUNC0 (int /*<<< orphan*/ ,size_t,size_t) ; 

__attribute__((used)) static int FUNC1(struct onyx *onyx, u8 reg, u8 value)
{
	int result;

	result = FUNC0(onyx->i2c, reg, value);
	if (!result)
		onyx->cache[reg-FIRSTREGISTER] = value;
	return result;
}