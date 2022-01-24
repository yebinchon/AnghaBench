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
struct elf32_arm_link_hash_table {int /*<<< orphan*/  obfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_ATTR_PROC ; 
 int TAG_CPU_ARCH_V6T2 ; 
 int TAG_CPU_ARCH_V7 ; 
 int /*<<< orphan*/  Tag_CPU_arch ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1 (struct elf32_arm_link_hash_table *globals)
{
  int arch = FUNC0 (globals->obfd, OBJ_ATTR_PROC,
				       Tag_CPU_arch);
  return arch == TAG_CPU_ARCH_V6T2 || arch >= TAG_CPU_ARCH_V7;
}