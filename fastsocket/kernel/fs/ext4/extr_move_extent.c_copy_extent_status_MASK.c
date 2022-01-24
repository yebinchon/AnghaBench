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
struct ext4_extent {int /*<<< orphan*/  ee_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_extent*) ; 
 scalar_t__ FUNC2 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC3 (struct ext4_extent*) ; 

__attribute__((used)) static void
FUNC4(struct ext4_extent *src, struct ext4_extent *dest)
{
	if (FUNC2(src))
		FUNC3(dest);
	else
		dest->ee_len = FUNC0(FUNC1(dest));
}