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
typedef  int /*<<< orphan*/  s_sbind ;

/* Variables and functions */
#define  STB_GLOBAL 131 
#define  STB_GNU_UNIQUE 130 
 unsigned int STB_HIOS ; 
 unsigned int STB_HIPROC ; 
#define  STB_LOCAL 129 
 unsigned int STB_LOOS ; 
 unsigned int STB_LOPROC ; 
#define  STB_WEAK 128 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static const char *
FUNC1(unsigned int sbind)
{
	static char s_sbind[32];

	switch (sbind) {
	case STB_LOCAL: return "STB_LOCAL";
	case STB_GLOBAL: return "STB_GLOBAL";
	case STB_WEAK: return "STB_WEAK";
	case STB_GNU_UNIQUE: return "STB_GNU_UNIQUE";
	default:
		if (sbind >= STB_LOOS && sbind <= STB_HIOS)
			return "OS";
		else if (sbind >= STB_LOPROC && sbind <= STB_HIPROC)
			return "PROC";
		else
			FUNC0(s_sbind, sizeof(s_sbind), "<unknown: %#x>",
			    sbind);
		return (s_sbind);
	}
}