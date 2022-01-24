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
struct stifb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stifb_info*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct stifb_info*,int) ; 

__attribute__((used)) static void 
FUNC2(struct stifb_info *fb, int enable)
{
	unsigned int value = enable ? 0x10000000 : 0x30000000;
	FUNC0(fb);
	FUNC1(0x01000000,	fb, 0x1000);
	FUNC1(0x02000000,	fb, 0x1004);
	FUNC1(value,	fb, 0x1008);
}