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
struct inbuf {int ptr; int base; scalar_t__ limit; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct inbuf *inb, int align)
{
	int off = inb->ptr - inb->base;

	inb->ptr = inb->base + FUNC0(off, align);
	if (inb->ptr > inb->limit)
		FUNC1("Premature end of data parsing flat device tree\n");
}