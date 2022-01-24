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
struct btrfsic_block_link {scalar_t__ magic_num; } ;

/* Variables and functions */
 scalar_t__ BTRFSIC_BLOCK_LINK_MAGIC_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfsic_block_link*) ; 

__attribute__((used)) static void FUNC2(struct btrfsic_block_link *l)
{
	FUNC0(!(NULL == l || BTRFSIC_BLOCK_LINK_MAGIC_NUMBER == l->magic_num));
	FUNC1(l);
}