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
struct inode {int dummy; } ;
struct ima_template_entry {int template_len; int /*<<< orphan*/  template_name; int /*<<< orphan*/  digest; int /*<<< orphan*/  template; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_INTEGRITY_PCR ; 
 int /*<<< orphan*/  IMA_TEMPLATE_NAME ; 
 int FUNC0 (struct ima_template_entry*,int,char const*,struct inode*) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,char const*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct ima_template_entry *entry,
		       int violation, struct inode *inode)
{
	const char *op = "add_template_measure";
	const char *audit_cause = "hashing_error";
	int result;

	FUNC3(entry->digest, 0, sizeof(entry->digest));
	entry->template_name = IMA_TEMPLATE_NAME;
	entry->template_len = sizeof(entry->template);

	if (!violation) {
		result = FUNC1(entry->template_len,
						&entry->template,
						entry->digest);
		if (result < 0) {
			FUNC2(AUDIT_INTEGRITY_PCR, inode,
					    entry->template_name, op,
					    audit_cause, result, 0);
			return result;
		}
	}
	result = FUNC0(entry, violation, op, inode);
	return result;
}