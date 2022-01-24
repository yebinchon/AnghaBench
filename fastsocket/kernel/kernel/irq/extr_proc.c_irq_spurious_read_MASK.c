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
struct irq_desc {int irq_count; int irqs_unhandled; int /*<<< orphan*/  last_unhandled; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 struct irq_desc* FUNC0 (long) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,int,int,int) ; 

__attribute__((used)) static int FUNC3(char *page, char **start, off_t off,
				  int count, int *eof, void *data)
{
	struct irq_desc *desc = FUNC0((long) data);
	return FUNC2(page, "count %u\n"
			     "unhandled %u\n"
			     "last_unhandled %u ms\n",
			desc->irq_count,
			desc->irqs_unhandled,
			FUNC1(desc->last_unhandled));
}