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
struct file_ra_state {int dummy; } ;
struct address_space {int /*<<< orphan*/  page_tree; } ;
typedef  int pgoff_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static pgoff_t FUNC3(struct address_space *mapping,
				   struct file_ra_state *ra,
				   pgoff_t offset, unsigned long max)
{
	pgoff_t head;

	FUNC1();
	head = FUNC0(&mapping->page_tree, offset - 1, max);
	FUNC2();

	return offset - 1 - head;
}