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
struct TYPE_3__ {int* b; } ;
typedef  TYPE_1__ bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int,int,int,int,int) ; 

char *FUNC1(bdaddr_t *ba)
{
	static char str[2][18];
	static int i = 1;

	i ^= 1;
	FUNC0(str[i], "%2.2X:%2.2X:%2.2X:%2.2X:%2.2X:%2.2X",
		ba->b[0], ba->b[1], ba->b[2],
		ba->b[3], ba->b[4], ba->b[5]);

	return str[i];
}