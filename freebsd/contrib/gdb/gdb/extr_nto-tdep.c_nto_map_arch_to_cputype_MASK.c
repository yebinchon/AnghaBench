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
 int CPUTYPE_ARM ; 
 int CPUTYPE_MIPS ; 
 int CPUTYPE_PPC ; 
 int CPUTYPE_SH ; 
 int CPUTYPE_UNKNOWN ; 
 int CPUTYPE_X86 ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

int
FUNC1 (const char *arch)
{
  if (!FUNC0 (arch, "i386") || !FUNC0 (arch, "x86"))
    return CPUTYPE_X86;
  if (!FUNC0 (arch, "rs6000") || !FUNC0 (arch, "powerpc"))
    return CPUTYPE_PPC;
  if (!FUNC0 (arch, "mips"))
    return CPUTYPE_MIPS;
  if (!FUNC0 (arch, "arm"))
    return CPUTYPE_ARM;
  if (!FUNC0 (arch, "sh"))
    return CPUTYPE_SH;
  return CPUTYPE_UNKNOWN;
}