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
struct timespec {int dummy; } ;
struct super_block {int /*<<< orphan*/  s_time_gran; } ;

/* Variables and functions */
 struct timespec FUNC0 () ; 
 struct timespec FUNC1 (struct timespec,int /*<<< orphan*/ ) ; 

struct timespec FUNC2(struct super_block *sb)
{
	struct timespec now = FUNC0();
	return FUNC1(now, sb->s_time_gran);
}