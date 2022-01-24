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
struct mavenregs {int dummy; } ;
struct matrox_fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct matrox_fb_info*,int,int) ; 

__attribute__((used)) static void FUNC2(struct matrox_fb_info *minfo,
			 const struct mavenregs *m)
{
	int i;

	FUNC0(0x80);
	FUNC0(0x82); FUNC0(0x83);
	FUNC0(0x84); FUNC0(0x85);
	
	FUNC1(minfo, 0x3E, 0x01);
	
	for (i = 0; i < 0x3E; i++) {
		FUNC0(i);
	}
	FUNC1(minfo, 0x3E, 0x00);
}