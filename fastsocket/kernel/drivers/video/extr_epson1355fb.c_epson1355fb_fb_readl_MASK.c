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
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int const*) ; 

__attribute__((used)) static inline unsigned long FUNC1(const unsigned long *a)
{
	const u16 *p = (u16 *) a;
	u16 l = FUNC0(p);
	u16 h = FUNC0(p + 1);

	return (h << 16) | l;
}