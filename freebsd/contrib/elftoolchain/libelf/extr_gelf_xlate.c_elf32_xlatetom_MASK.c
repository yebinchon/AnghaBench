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
typedef  int /*<<< orphan*/  Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  ELFCLASS32 ; 
 int /*<<< orphan*/  ELF_TOMEMORY ; 
 int /*<<< orphan*/  EM_NONE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Elf_Data *
FUNC1(Elf_Data *dst, const Elf_Data *src, unsigned int encoding)
{
	return FUNC0(dst, src, encoding, ELFCLASS32, EM_NONE,
	    ELF_TOMEMORY);
}