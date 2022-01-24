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
typedef  int /*<<< orphan*/  s_class ;

/* Variables and functions */
#define  ELFCLASS32 130 
#define  ELFCLASS64 129 
#define  ELFCLASSNONE 128 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static const char *
FUNC1(unsigned int class)
{
	static char s_class[32];

	switch (class) {
	case ELFCLASSNONE: return "none";
	case ELFCLASS32: return "ELF32";
	case ELFCLASS64: return "ELF64";
	default:
		FUNC0(s_class, sizeof(s_class), "<unknown: %#x>", class);
		return (s_class);
	}
}