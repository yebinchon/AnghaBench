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
struct ecryptfs_crypt_stat {scalar_t__ file_version; int /*<<< orphan*/ * mount_crypt_stat; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  mount_crypt_stat; } ;

/* Variables and functions */
 int ECRYPTFS_FILE_SIZE_BYTES ; 
 scalar_t__ ECRYPTFS_SUPPORTED_FILE_VERSION ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 scalar_t__ MAGIC_ECRYPTFS_MARKER_SIZE_BYTES ; 
 int FUNC0 (char*) ; 
 int FUNC1 (struct ecryptfs_crypt_stat*,char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct ecryptfs_crypt_stat*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ecryptfs_crypt_stat*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ecryptfs_crypt_stat*,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ecryptfs_crypt_stat*) ; 

__attribute__((used)) static int FUNC8(char *page_virt,
				      struct ecryptfs_crypt_stat *crypt_stat,
				      struct dentry *ecryptfs_dentry,
				      int validate_header_size)
{
	int rc = 0;
	int offset;
	int bytes_read;

	FUNC4(crypt_stat);
	crypt_stat->mount_crypt_stat = &FUNC5(
		ecryptfs_dentry->d_sb)->mount_crypt_stat;
	offset = ECRYPTFS_FILE_SIZE_BYTES;
	rc = FUNC0(page_virt + offset);
	if (rc == 0) {
		rc = -EINVAL;
		goto out;
	}
	offset += MAGIC_ECRYPTFS_MARKER_SIZE_BYTES;
	rc = FUNC3(crypt_stat, (page_virt + offset),
				    &bytes_read);
	if (rc) {
		FUNC2(KERN_WARNING, "Error processing flags\n");
		goto out;
	}
	if (crypt_stat->file_version > ECRYPTFS_SUPPORTED_FILE_VERSION) {
		FUNC2(KERN_WARNING, "File version is [%d]; only "
				"file version [%d] is supported by this "
				"version of eCryptfs\n",
				crypt_stat->file_version,
				ECRYPTFS_SUPPORTED_FILE_VERSION);
		rc = -EINVAL;
		goto out;
	}
	offset += bytes_read;
	if (crypt_stat->file_version >= 1) {
		rc = FUNC6(crypt_stat, (page_virt + offset),
					   &bytes_read, validate_header_size);
		if (rc) {
			FUNC2(KERN_WARNING, "Error reading header "
					"metadata; rc = [%d]\n", rc);
		}
		offset += bytes_read;
	} else
		FUNC7(crypt_stat);
	rc = FUNC1(crypt_stat, (page_virt + offset),
				       ecryptfs_dentry);
out:
	return rc;
}