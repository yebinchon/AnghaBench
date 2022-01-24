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
typedef  int /*<<< orphan*/  u8 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  file_name; } ;
struct ima_template_entry {TYPE_1__ template; int /*<<< orphan*/  digest; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_INTEGRITY_PCR ; 
 int IMA_DIGEST_SIZE ; 
 int FUNC0 (struct ima_template_entry*) ; 
 int /*<<< orphan*/  ima_extend_list_mutex ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,char const*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct ima_template_entry *entry, int violation,
			   const char *op, struct inode *inode)
{
	u8 digest[IMA_DIGEST_SIZE];
	const char *audit_cause = "hash_added";
	int audit_info = 1;
	int result = 0;

	FUNC6(&ima_extend_list_mutex);
	if (!violation) {
		FUNC4(digest, entry->digest, sizeof digest);
		if (FUNC1(digest)) {
			audit_cause = "hash_exists";
			goto out;
		}
	}

	result = FUNC0(entry);
	if (result < 0) {
		audit_cause = "ENOMEM";
		audit_info = 0;
		goto out;
	}

	if (violation)		/* invalidate pcr */
		FUNC5(digest, 0xff, sizeof digest);

	result = FUNC2(digest);
	if (result != 0) {
		audit_cause = "TPM error";
		audit_info = 0;
	}
out:
	FUNC7(&ima_extend_list_mutex);
	FUNC3(AUDIT_INTEGRITY_PCR, inode,
			    entry->template.file_name,
			    op, audit_cause, result, audit_info);
	return result;
}