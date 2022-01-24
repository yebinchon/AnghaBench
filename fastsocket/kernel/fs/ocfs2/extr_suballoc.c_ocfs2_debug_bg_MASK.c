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
struct ocfs2_group_desc {unsigned long long bg_signature; unsigned long long bg_size; unsigned long long bg_bits; unsigned long long bg_free_bits_count; unsigned long long bg_chain; scalar_t__ bg_blkno; scalar_t__ bg_parent_dinode; scalar_t__ bg_next_group; int /*<<< orphan*/  bg_generation; } ;

/* Variables and functions */
 unsigned long long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static inline void FUNC2(struct ocfs2_group_desc *bg)
{
	FUNC1("Block Group:\n");
	FUNC1("bg_signature:       %s\n", bg->bg_signature);
	FUNC1("bg_size:            %u\n", bg->bg_size);
	FUNC1("bg_bits:            %u\n", bg->bg_bits);
	FUNC1("bg_free_bits_count: %u\n", bg->bg_free_bits_count);
	FUNC1("bg_chain:           %u\n", bg->bg_chain);
	FUNC1("bg_generation:      %u\n", FUNC0(bg->bg_generation));
	FUNC1("bg_next_group:      %llu\n",
	       (unsigned long long)bg->bg_next_group);
	FUNC1("bg_parent_dinode:   %llu\n",
	       (unsigned long long)bg->bg_parent_dinode);
	FUNC1("bg_blkno:           %llu\n",
	       (unsigned long long)bg->bg_blkno);
}