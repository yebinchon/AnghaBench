#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file {int dummy; } ;
struct elf_phdr {unsigned long p_filesz; unsigned long p_offset; int /*<<< orphan*/  p_vaddr; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned long) ; 
 TYPE_2__* current ; 
 unsigned long FUNC4 (struct file*,unsigned long,unsigned long,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC8(struct file *filep, unsigned long addr,
		struct elf_phdr *eppnt, int prot, int type,
		unsigned long total_size)
{
	unsigned long map_addr;
	unsigned long size = eppnt->p_filesz + FUNC2(eppnt->p_vaddr);
	unsigned long off = eppnt->p_offset - FUNC2(eppnt->p_vaddr);
	addr = FUNC3(addr);
	size = FUNC1(size);

	/* mmap() will return -EINVAL if given a zero size, but a
	 * segment with zero filesize is perfectly valid */
	if (!size)
		return addr;

	FUNC6(&current->mm->mmap_sem);
	/*
	* total_size is the size of the ELF (interpreter) image.
	* The _first_ mmap needs to know the full size, otherwise
	* randomization might put this image into an overlapping
	* position with the ELF binary image. (since size < total_size)
	* So we first map the 'big' image - and unmap the remainder at
	* the end. (which unmap is needed for ELF images with holes.)
	*/
	if (total_size) {
		total_size = FUNC1(total_size);
		map_addr = FUNC4(filep, addr, total_size, prot, type, off);
		if (!FUNC0(map_addr))
			FUNC5(current->mm, map_addr+size, total_size-size);
	} else
		map_addr = FUNC4(filep, addr, size, prot, type, off);

	FUNC7(&current->mm->mmap_sem);
	return(map_addr);
}