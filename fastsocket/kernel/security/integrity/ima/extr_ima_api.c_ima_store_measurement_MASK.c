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
struct TYPE_4__ {int /*<<< orphan*/  file_name; int /*<<< orphan*/  digest; } ;
struct ima_template_entry {TYPE_2__ template; } ;
struct ima_iint_cache {int /*<<< orphan*/  flags; int /*<<< orphan*/  digest; } ;
struct file {TYPE_1__* f_dentry; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_INTEGRITY_PCR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IMA_DIGEST_SIZE ; 
 int /*<<< orphan*/  IMA_EVENT_NAME_LEN_MAX ; 
 int /*<<< orphan*/  IMA_MEASURED ; 
 int FUNC0 (struct ima_template_entry*,int,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct inode*,unsigned char const*,char const*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ima_template_entry*) ; 
 struct ima_template_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 

void FUNC7(struct ima_iint_cache *iint, struct file *file,
			   const unsigned char *filename)
{
	const char *op = "add_template_measure";
	const char *audit_cause = "ENOMEM";
	int result = -ENOMEM;
	struct inode *inode = file->f_dentry->d_inode;
	struct ima_template_entry *entry;
	int violation = 0;

	entry = FUNC3(sizeof(*entry), GFP_KERNEL);
	if (!entry) {
		FUNC1(AUDIT_INTEGRITY_PCR, inode, filename,
				    op, audit_cause, result, 0);
		return;
	}
	FUNC5(&entry->template, 0, sizeof(entry->template));
	FUNC4(entry->template.digest, iint->digest, IMA_DIGEST_SIZE);
	FUNC6(entry->template.file_name, filename, IMA_EVENT_NAME_LEN_MAX);

	result = FUNC0(entry, violation, inode);
	if (!result)
		iint->flags |= IMA_MEASURED;
	else
		FUNC2(entry);
}