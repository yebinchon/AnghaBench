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

/* Variables and functions */
 int /*<<< orphan*/  BE_TABLE_SIZE ; 
 int CRC_BE_BITS ; 
 int CRC_LE_BITS ; 
 int /*<<< orphan*/  LE_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  crc32table_be ; 
 int /*<<< orphan*/  crc32table_le ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(int argc, char** argv)
{
	FUNC3("/* this file is generated - do not edit */\n\n");

	if (CRC_LE_BITS > 1) {
		FUNC1();
		FUNC3("static const u32 crc32table_le[] = {");
		FUNC2(crc32table_le, LE_TABLE_SIZE, "tole");
		FUNC3("};\n");
	}

	if (CRC_BE_BITS > 1) {
		FUNC0();
		FUNC3("static const u32 crc32table_be[] = {");
		FUNC2(crc32table_be, BE_TABLE_SIZE, "tobe");
		FUNC3("};\n");
	}

	return 0;
}