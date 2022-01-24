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
 char const* FUNC0 (unsigned int) ; 

__attribute__((used)) static const char *
FUNC1(unsigned int nt)
{
	switch (nt) {
	case 1: return "NT_NETBSD_IDENT";
	default: return (FUNC0(nt));
	}
}