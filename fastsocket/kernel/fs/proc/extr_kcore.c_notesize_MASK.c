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
struct memelfnote {scalar_t__ datasz; int /*<<< orphan*/  name; } ;
struct elf_note {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct memelfnote *en)
{
	int sz;

	sz = sizeof(struct elf_note);
	sz += FUNC0((FUNC1(en->name) + 1), 4);
	sz += FUNC0(en->datasz, 4);

	return sz;
}