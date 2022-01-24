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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long,unsigned long long) ; 
 scalar_t__ UINT_MAX ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline u32 FUNC2(u64 a, u64 b)
{
	u64 result = FUNC1(a, b);

	if (result > UINT_MAX) {
		FUNC0("Overflow: %llu/%llu > UINT_MAX",
			  (unsigned long long)a, (unsigned long long)b);
		return UINT_MAX;
	}
	return result;
}