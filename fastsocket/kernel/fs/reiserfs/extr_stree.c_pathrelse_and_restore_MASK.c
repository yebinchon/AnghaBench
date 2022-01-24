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
struct treepath {int path_length; } ;
struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int ILLEGAL_PATH_ELEMENT_OFFSET ; 
 struct buffer_head* FUNC0 (struct treepath*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,struct buffer_head*) ; 

void FUNC4(struct super_block *sb,
			   struct treepath *search_path)
{
	int path_offset = search_path->path_length;

	FUNC1(path_offset < ILLEGAL_PATH_ELEMENT_OFFSET,
	       "clm-4000: invalid path offset");

	while (path_offset > ILLEGAL_PATH_ELEMENT_OFFSET) {
		struct buffer_head *bh;
		bh = FUNC0(search_path, path_offset--);
		FUNC3(sb, bh);
		FUNC2(bh);
	}
	search_path->path_length = ILLEGAL_PATH_ELEMENT_OFFSET;
}