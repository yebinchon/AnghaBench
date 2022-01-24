#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct qstr {unsigned int len; char* name; } ;
struct nls_table {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; struct nls_table* local_nls; } ;
typedef  scalar_t__ __u64 ;
typedef  scalar_t__ __u16 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_14__ {char* FileName; int /*<<< orphan*/  FileNameLength; } ;
struct TYPE_13__ {char* FileName; int /*<<< orphan*/  FileNameLength; } ;
struct TYPE_12__ {char* FileName; int /*<<< orphan*/  FileNameLength; } ;
struct TYPE_8__ {int /*<<< orphan*/  UniqueId; } ;
struct TYPE_11__ {char* FileName; TYPE_1__ basic; } ;
struct TYPE_10__ {char* FileName; scalar_t__ FileNameLength; } ;
struct TYPE_9__ {char* FileName; int /*<<< orphan*/  UniqueId; int /*<<< orphan*/  FileNameLength; } ;
typedef  TYPE_2__ SEARCH_ID_FULL_DIR_INFO ;
typedef  TYPE_3__ FIND_FILE_STANDARD_INFO ;
typedef  TYPE_4__ FILE_UNIX_INFO ;
typedef  TYPE_5__ FILE_FULL_DIRECTORY_INFO ;
typedef  TYPE_6__ FILE_DIRECTORY_INFO ;
typedef  TYPE_7__ FILE_BOTH_DIRECTORY_INFO ;

/* Variables and functions */
 int CIFS_MOUNT_MAP_SPECIAL_CHR ; 
 int EINVAL ; 
 int /*<<< orphan*/  PATH_MAX ; 
 scalar_t__ SMB_FIND_FILE_BOTH_DIRECTORY_INFO ; 
 scalar_t__ SMB_FIND_FILE_DIRECTORY_INFO ; 
 scalar_t__ SMB_FIND_FILE_FULL_DIRECTORY_INFO ; 
 scalar_t__ SMB_FIND_FILE_ID_FULL_DIR_INFO ; 
 scalar_t__ SMB_FIND_FILE_INFO_STANDARD ; 
 scalar_t__ SMB_FIND_FILE_UNIX ; 
 int /*<<< orphan*/  UNICODE_NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 unsigned int FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nls_table*,int) ; 
 unsigned int FUNC3 (char*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC7 (struct nls_table*) ; 
 unsigned int FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct qstr *pqst,
	char *current_entry, __u16 level, unsigned int unicode,
	struct cifs_sb_info *cifs_sb, unsigned int max_len, __u64 *pinum)
{
	int rc = 0;
	unsigned int len = 0;
	char *filename;
	struct nls_table *nlt = cifs_sb->local_nls;

	*pinum = 0;

	if (level == SMB_FIND_FILE_UNIX) {
		FILE_UNIX_INFO *pFindData = (FILE_UNIX_INFO *)current_entry;

		filename = &pFindData->FileName[0];
		if (unicode) {
			len = FUNC3(filename);
		} else {
			/* BB should we make this strnlen of PATH_MAX? */
			len = FUNC8(filename, PATH_MAX);
		}

		*pinum = FUNC5(pFindData->basic.UniqueId);
	} else if (level == SMB_FIND_FILE_DIRECTORY_INFO) {
		FILE_DIRECTORY_INFO *pFindData =
			(FILE_DIRECTORY_INFO *)current_entry;
		filename = &pFindData->FileName[0];
		len = FUNC4(pFindData->FileNameLength);
	} else if (level == SMB_FIND_FILE_FULL_DIRECTORY_INFO) {
		FILE_FULL_DIRECTORY_INFO *pFindData =
			(FILE_FULL_DIRECTORY_INFO *)current_entry;
		filename = &pFindData->FileName[0];
		len = FUNC4(pFindData->FileNameLength);
	} else if (level == SMB_FIND_FILE_ID_FULL_DIR_INFO) {
		SEARCH_ID_FULL_DIR_INFO *pFindData =
			(SEARCH_ID_FULL_DIR_INFO *)current_entry;
		filename = &pFindData->FileName[0];
		len = FUNC4(pFindData->FileNameLength);
		*pinum = FUNC5(pFindData->UniqueId);
	} else if (level == SMB_FIND_FILE_BOTH_DIRECTORY_INFO) {
		FILE_BOTH_DIRECTORY_INFO *pFindData =
			(FILE_BOTH_DIRECTORY_INFO *)current_entry;
		filename = &pFindData->FileName[0];
		len = FUNC4(pFindData->FileNameLength);
	} else if (level == SMB_FIND_FILE_INFO_STANDARD) {
		FIND_FILE_STANDARD_INFO *pFindData =
			(FIND_FILE_STANDARD_INFO *)current_entry;
		filename = &pFindData->FileName[0];
		/* one byte length, no name conversion */
		len = (unsigned int)pFindData->FileNameLength;
	} else {
		FUNC1(1, "Unknown findfirst level %d", level);
		return -EINVAL;
	}

	if (len > max_len) {
		FUNC0(1, "bad search response length %d past smb end", len);
		return -EINVAL;
	}

	if (unicode) {
		pqst->len = FUNC2((char *) pqst->name,
					   (__le16 *) filename,
					   UNICODE_NAME_MAX,
					   FUNC6(len, max_len), nlt,
					   cifs_sb->mnt_cifs_flags &
						CIFS_MOUNT_MAP_SPECIAL_CHR);
		pqst->len -= FUNC7(nlt);
	} else {
		pqst->name = filename;
		pqst->len = len;
	}
	return rc;
}