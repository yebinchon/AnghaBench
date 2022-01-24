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
struct nfs4_file {int fi_had_conflict; int /*<<< orphan*/  fi_hash; int /*<<< orphan*/  fi_access; int /*<<< orphan*/  fi_fds; scalar_t__ fi_id; int /*<<< orphan*/  fi_inode; int /*<<< orphan*/  fi_delegations; int /*<<< orphan*/  fi_stateids; int /*<<< orphan*/  fi_ref; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  current_fileid ; 
 int /*<<< orphan*/ * file_hashtbl ; 
 unsigned int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  file_slab ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct nfs4_file* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  recall_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct nfs4_file *
FUNC9(struct inode *ino)
{
	struct nfs4_file *fp;
	unsigned int hashval = FUNC2(ino);

	fp = FUNC4(file_slab, GFP_KERNEL);
	if (fp) {
		FUNC1(&fp->fi_ref, 1);
		FUNC0(&fp->fi_hash);
		FUNC0(&fp->fi_stateids);
		FUNC0(&fp->fi_delegations);
		fp->fi_inode = FUNC3(ino);
		fp->fi_id = current_fileid++;
		fp->fi_had_conflict = false;
		FUNC6(fp->fi_fds, 0, sizeof(fp->fi_fds));
		FUNC6(fp->fi_access, 0, sizeof(fp->fi_access));
		FUNC7(&recall_lock);
		FUNC5(&fp->fi_hash, &file_hashtbl[hashval]);
		FUNC8(&recall_lock);
		return fp;
	}
	return NULL;
}