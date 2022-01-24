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
struct writequeue_entry {struct connection* con; scalar_t__ users; scalar_t__ end; scalar_t__ len; scalar_t__ offset; int /*<<< orphan*/  page; } ;
struct connection {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct writequeue_entry*) ; 
 struct writequeue_entry* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct writequeue_entry *FUNC3(struct connection *con,
						     gfp_t allocation)
{
	struct writequeue_entry *entry;

	entry = FUNC2(sizeof(struct writequeue_entry), allocation);
	if (!entry)
		return NULL;

	entry->page = FUNC0(allocation);
	if (!entry->page) {
		FUNC1(entry);
		return NULL;
	}

	entry->offset = 0;
	entry->len = 0;
	entry->end = 0;
	entry->users = 0;
	entry->con = con;

	return entry;
}