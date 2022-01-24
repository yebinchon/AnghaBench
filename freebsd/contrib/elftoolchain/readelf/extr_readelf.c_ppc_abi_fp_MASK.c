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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  s_ppc_abi_fp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC1(uint64_t fp)
{
	static char s_ppc_abi_fp[64];

	switch (fp) {
	case 0: return "N/A";
	case 1: return "Hard float (double precision)";
	case 2: return "Soft float";
	case 3: return "Hard float (single precision)";
	default:
		FUNC0(s_ppc_abi_fp, sizeof(s_ppc_abi_fp), "Unknown(%ju)",
		    (uintmax_t) fp);
		return (s_ppc_abi_fp);
	}
}