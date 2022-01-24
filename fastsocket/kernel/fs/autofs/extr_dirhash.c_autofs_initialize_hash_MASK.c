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
struct autofs_dirhash {int /*<<< orphan*/  expiry_head; int /*<<< orphan*/  h; } ;
struct autofs_dir_ent {int dummy; } ;

/* Variables and functions */
 int AUTOFS_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct autofs_dirhash *dh) {
	FUNC1(&dh->h, 0, AUTOFS_HASH_SIZE*sizeof(struct autofs_dir_ent *));
	FUNC0(&dh->expiry_head);
}