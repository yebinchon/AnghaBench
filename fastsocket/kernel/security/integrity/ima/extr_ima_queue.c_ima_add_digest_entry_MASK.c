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
struct ima_template_entry {int /*<<< orphan*/  digest; } ;
struct ima_queue_entry {int /*<<< orphan*/  hnext; int /*<<< orphan*/  later; struct ima_template_entry* entry; } ;
struct TYPE_2__ {int /*<<< orphan*/ * queue; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ ima_htable ; 
 int /*<<< orphan*/  ima_measurements ; 
 struct ima_queue_entry* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct ima_template_entry *entry)
{
	struct ima_queue_entry *qe;
	unsigned int key;

	qe = FUNC4(sizeof(*qe), GFP_KERNEL);
	if (qe == NULL) {
		FUNC6("IMA: OUT OF MEMORY ERROR creating queue entry.\n");
		return -ENOMEM;
	}
	qe->entry = entry;

	FUNC0(&qe->later);
	FUNC5(&qe->later, &ima_measurements);

	FUNC1(&ima_htable.len);
	key = FUNC3(entry->digest);
	FUNC2(&qe->hnext, &ima_htable.queue[key]);
	return 0;
}