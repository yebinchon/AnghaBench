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
struct page {scalar_t__ private; } ;
struct extent_buffer {int /*<<< orphan*/  refs; int /*<<< orphan*/  bflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXTENT_BUFFER_DIRTY ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct page *page)
{
	struct extent_buffer *eb;

	FUNC0(!FUNC1(page));
	eb = (struct extent_buffer *)page->private;
	FUNC0(!eb);
	FUNC0(!FUNC5(EXTENT_BUFFER_DIRTY, &eb->bflags));
	FUNC0(!FUNC3(&eb->refs));
	FUNC4(eb);
	return FUNC2(page);
}