#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  file_name; } ;
struct ima_template_entry {TYPE_1__ template; } ;
struct TYPE_4__ {int /*<<< orphan*/  violations; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_INTEGRITY_PCR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IMA_EVENT_NAME_LEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__ ima_htable ; 
 int FUNC1 (struct ima_template_entry*,int,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct inode*,unsigned char const*,char const*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ima_template_entry*) ; 
 struct ima_template_entry* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 

void FUNC7(struct inode *inode, const unsigned char *filename,
		       const char *op, const char *cause)
{
	struct ima_template_entry *entry;
	int violation = 1;
	int result;

	/* can overflow, only indicator */
	FUNC0(&ima_htable.violations);

	entry = FUNC4(sizeof(*entry), GFP_KERNEL);
	if (!entry) {
		result = -ENOMEM;
		goto err_out;
	}
	FUNC5(&entry->template, 0, sizeof(entry->template));
	FUNC6(entry->template.file_name, filename, IMA_EVENT_NAME_LEN_MAX);
	result = FUNC1(entry, violation, inode);
	if (result < 0)
		FUNC3(entry);
err_out:
	FUNC2(AUDIT_INTEGRITY_PCR, inode, filename,
			    op, cause, result, 0);
}