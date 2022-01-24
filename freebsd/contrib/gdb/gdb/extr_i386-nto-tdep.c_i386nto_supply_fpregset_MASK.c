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
 int X86_CPU_FXSR ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int nto_cpuinfo_flags ; 
 scalar_t__ nto_cpuinfo_valid ; 

__attribute__((used)) static void
FUNC2 (char *fpregs)
{
  if (nto_cpuinfo_valid && nto_cpuinfo_flags | X86_CPU_FXSR)
    FUNC1 (current_regcache, -1, fpregs);
  else
    FUNC0 (current_regcache, -1, fpregs);
}