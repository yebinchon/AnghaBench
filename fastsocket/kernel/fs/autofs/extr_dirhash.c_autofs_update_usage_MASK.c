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
struct autofs_dirhash {int dummy; } ;
struct autofs_dir_ent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct autofs_dir_ent*) ; 
 int /*<<< orphan*/  FUNC1 (struct autofs_dirhash*,struct autofs_dir_ent*) ; 

void FUNC2(struct autofs_dirhash *dh,
			 struct autofs_dir_ent *ent)
{
	FUNC0(ent);   /* Unlink from current position */
	FUNC1(dh,ent);  /* Relink at queue tail */
}