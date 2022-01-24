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
struct TYPE_2__ {int /*<<< orphan*/ * ent16_p; } ;
struct fat_entry {TYPE_1__ u; } ;

/* Variables and functions */
 int BAD_FAT16 ; 
 int FAT_ENT_EOF ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct fat_entry *fatent)
{
	int next = FUNC1(*fatent->u.ent16_p);
	FUNC0((unsigned long)fatent->u.ent16_p & (2 - 1));
	if (next >= BAD_FAT16)
		next = FAT_ENT_EOF;
	return next;
}