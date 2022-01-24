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
struct reserve_info {int dummy; } ;
struct inbuf {char* ptr; } ;
struct fdt_reserve_entry {scalar_t__ address; scalar_t__ size; } ;
typedef  int /*<<< orphan*/  re ;

/* Variables and functions */
 struct reserve_info* FUNC0 (struct reserve_info*,struct reserve_info*) ; 
 struct reserve_info* FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inbuf*,struct fdt_reserve_entry*,int) ; 

__attribute__((used)) static struct reserve_info *FUNC4(struct inbuf *inb)
{
	struct reserve_info *reservelist = NULL;
	struct reserve_info *new;
	const char *p;
	struct fdt_reserve_entry re;

	/*
	 * Each entry is a pair of u64 (addr, size) values for 4 cell_t's.
	 * List terminates at an entry with size equal to zero.
	 *
	 * First pass, count entries.
	 */
	p = inb->ptr;
	while (1) {
		FUNC3(inb, &re, sizeof(re));
		re.address  = FUNC2(re.address);
		re.size = FUNC2(re.size);
		if (re.size == 0)
			break;

		new = FUNC1(re.address, re.size, NULL);
		reservelist = FUNC0(reservelist, new);
	}

	return reservelist;
}