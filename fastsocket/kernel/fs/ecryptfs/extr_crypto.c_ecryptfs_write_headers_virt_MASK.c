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
struct ecryptfs_crypt_stat {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 size_t ECRYPTFS_FILE_SIZE_BYTES ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int FUNC0 (char*,struct ecryptfs_crypt_stat*,struct dentry*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ecryptfs_crypt_stat*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ecryptfs_crypt_stat*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t*) ; 

__attribute__((used)) static int FUNC5(char *page_virt, size_t max,
				       size_t *size,
				       struct ecryptfs_crypt_stat *crypt_stat,
				       struct dentry *ecryptfs_dentry)
{
	int rc;
	size_t written;
	size_t offset;

	offset = ECRYPTFS_FILE_SIZE_BYTES;
	FUNC4((page_virt + offset), &written);
	offset += written;
	FUNC3((page_virt + offset), crypt_stat, &written);
	offset += written;
	FUNC2((page_virt + offset), crypt_stat,
				       &written);
	offset += written;
	rc = FUNC0((page_virt + offset), crypt_stat,
					      ecryptfs_dentry, &written,
					      max - offset);
	if (rc)
		FUNC1(KERN_WARNING, "Error generating key packet "
				"set; rc = [%d]\n", rc);
	if (size) {
		offset += written;
		*size = offset;
	}
	return rc;
}