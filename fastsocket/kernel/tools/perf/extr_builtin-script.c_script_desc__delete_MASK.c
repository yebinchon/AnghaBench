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
struct script_desc {struct script_desc* args; struct script_desc* half_liner; struct script_desc* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct script_desc*) ; 

__attribute__((used)) static void FUNC1(struct script_desc *s)
{
	FUNC0(s->name);
	FUNC0(s->half_liner);
	FUNC0(s->args);
	FUNC0(s);
}