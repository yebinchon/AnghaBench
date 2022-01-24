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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct hdq_data {scalar_t__ hdq_base; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static inline u8 FUNC2(struct hdq_data *hdq_data, u32 offset,
			u8 val, u8 mask)
{
	u8 new_val = (FUNC0(hdq_data->hdq_base + offset) & ~mask)
			| (val & mask);
	FUNC1(new_val, hdq_data->hdq_base + offset);

	return new_val;
}