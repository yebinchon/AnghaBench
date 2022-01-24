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
 int FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int,int) ; 

__attribute__((used)) static void FUNC4(char *buf, struct buffer_head *bh)
{
	FUNC3(buf, "level=%d, nr_items=%d, free_space=%d rdkey ",
		FUNC1(bh), FUNC2(bh), FUNC0(bh));
}