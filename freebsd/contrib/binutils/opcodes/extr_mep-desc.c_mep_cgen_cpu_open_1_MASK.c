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
typedef  enum cgen_endian { ____Placeholder_cgen_endian } cgen_endian ;
typedef  int /*<<< orphan*/  CGEN_CPU_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  CGEN_CPU_OPEN_BFDMACH ; 
 int /*<<< orphan*/  CGEN_CPU_OPEN_END ; 
 int /*<<< orphan*/  CGEN_CPU_OPEN_ENDIAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

CGEN_CPU_DESC
FUNC1 (const char *mach_name, enum cgen_endian endian)
{
  return FUNC0 (CGEN_CPU_OPEN_BFDMACH, mach_name,
			       CGEN_CPU_OPEN_ENDIAN, endian,
			       CGEN_CPU_OPEN_END);
}