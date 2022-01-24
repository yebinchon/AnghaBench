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
struct address_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct address_info *hw_config)
{
	unsigned char   tmp;

	if ((tmp = FUNC1(0xc44)) == 0xff)
	{
		FUNC0(FUNC3("init_deskpro_m: Dead port 0xc44\n"));
		return 0;
	}

	FUNC2(0x10, 0xc44);
	FUNC2(0x40, 0xc45);
	FUNC2(0x00, 0xc46);
	FUNC2(0xe8, 0xc47);
	FUNC2(0x14, 0xc44);
	FUNC2(0x40, 0xc45);
	FUNC2(0x00, 0xc46);
	FUNC2(0xe8, 0xc47);
	FUNC2(0x10, 0xc44);

	return 1;
}