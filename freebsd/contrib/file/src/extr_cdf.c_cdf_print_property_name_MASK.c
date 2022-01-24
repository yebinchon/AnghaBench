#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ v; scalar_t__ n; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int FUNC1 (char*,size_t,char*,scalar_t__) ; 
 TYPE_1__* vn ; 

int
FUNC2(char *buf, size_t bufsiz, uint32_t p)
{
	size_t i;

	for (i = 0; i < FUNC0(vn); i++)
		if (vn[i].v == p)
			return FUNC1(buf, bufsiz, "%s", vn[i].n);
	return FUNC1(buf, bufsiz, "%#x", p);
}