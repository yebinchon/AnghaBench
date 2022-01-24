#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  e_class; } ;
typedef  int /*<<< orphan*/  Elf_Data ;
typedef  TYPE_1__ Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARGUMENT ; 
 int /*<<< orphan*/  ELF_TOFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Elf_Data *
FUNC3(Elf *e, Elf_Data *dst, const Elf_Data *src,
    unsigned int encoding)
{
	if (e != NULL)
		return (FUNC2(dst, src, encoding, e->e_class,
		    FUNC1(e), ELF_TOFILE));
	FUNC0(ARGUMENT, 0);
	return (NULL);
}