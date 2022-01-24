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
struct htb_class {long tokens; long buffer; long mbuffer; int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(struct htb_class *cl, int bytes, long diff)
{
	long toks = diff + cl->tokens;

	if (toks > cl->buffer)
		toks = cl->buffer;
	toks -= (long) FUNC0(cl->rate, bytes);
	if (toks <= -cl->mbuffer)
		toks = 1 - cl->mbuffer;

	cl->tokens = toks;
}