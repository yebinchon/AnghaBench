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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tipc_msg*,int,int,int) ; 

__attribute__((used)) static inline u32 FUNC1(struct tipc_msg *m)
{
	return FUNC0(m, 4, 16, 0xffff);
}