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
struct buffer_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head const*) ; 
 scalar_t__ FREE_LEVEL ; 
 scalar_t__ MAX_HEIGHT ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct buffer_head const*,struct buffer_head const*) ; 

inline int FUNC2(const struct buffer_head *bh)
{

	FUNC1(FUNC0(bh) > MAX_HEIGHT,
	       "PAP-1010: block (%b) has too big level (%z)", bh, bh);

	return (FUNC0(bh) != FREE_LEVEL);
}