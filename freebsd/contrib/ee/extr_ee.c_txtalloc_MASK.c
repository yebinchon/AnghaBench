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
struct text {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

struct text *FUNC1()		/* allocate space for line structure	*/
{
	return((struct text *) FUNC0(sizeof( struct text)));
}