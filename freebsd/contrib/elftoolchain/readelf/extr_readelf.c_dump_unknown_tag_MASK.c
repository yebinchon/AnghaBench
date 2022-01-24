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
typedef  char* uintmax_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static uint8_t *
FUNC3(uint64_t tag, uint8_t *p, uint8_t *pe)
{
	uint64_t val;

	/*
	 * According to ARM EABI: For tags > 32, even numbered tags have
	 * a ULEB128 param and odd numbered ones have NUL-terminated
	 * string param. This rule probably also applies for tags <= 32
	 * if the object arch is not ARM.
	 */

	FUNC1("  Tag_unknown_%ju: ", (uintmax_t) tag);

	if (tag & 1) {
		FUNC1("%s\n", (char *) p);
		p += FUNC2((char *) p) + 1;
	} else {
		val = FUNC0(&p, pe);
		FUNC1("%ju\n", (uintmax_t) val);
	}

	return (p);
}