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
struct srcpos {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct srcpos*,struct srcpos*,int) ; 
 struct srcpos* FUNC1 (int) ; 

struct srcpos *
FUNC2(struct srcpos *pos)
{
	struct srcpos *pos_new;

	pos_new = FUNC1(sizeof(struct srcpos));
	FUNC0(pos_new, pos, sizeof(struct srcpos));

	return pos_new;
}