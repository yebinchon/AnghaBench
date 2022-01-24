#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  p; int /*<<< orphan*/  pos; } ;
struct module {TYPE_1__ dev_table_buf; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct buffer *buf, struct module *mod)
{
	FUNC0(buf, "\n");
	FUNC1(buf, mod->dev_table_buf.p, mod->dev_table_buf.pos);
	FUNC2(mod->dev_table_buf.p);
}