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
struct symbol {int dummy; } ;
struct sym_hist {int* addr; scalar_t__ sum; } ;
struct annotation {int dummy; } ;

/* Variables and functions */
 struct sym_hist* FUNC0 (struct annotation*,int) ; 
 struct annotation* FUNC1 (struct symbol*) ; 
 int FUNC2 (struct symbol*) ; 

void FUNC3(struct symbol *sym, int evidx)
{
	struct annotation *notes = FUNC1(sym);
	struct sym_hist *h = FUNC0(notes, evidx);
	int len = FUNC2(sym), offset;

	h->sum = 0;
	for (offset = 0; offset < len; ++offset) {
		h->addr[offset] = h->addr[offset] * 7 / 8;
		h->sum += h->addr[offset];
	}
}