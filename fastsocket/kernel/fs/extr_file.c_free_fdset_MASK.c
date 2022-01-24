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
struct fdtable {int max_fds; int /*<<< orphan*/  open_fds; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct fdtable *fdt)
{
	if (fdt->max_fds <= (PAGE_SIZE * BITS_PER_BYTE / 2))
		FUNC0(fdt->open_fds);
	else
		FUNC1(fdt->open_fds);
}