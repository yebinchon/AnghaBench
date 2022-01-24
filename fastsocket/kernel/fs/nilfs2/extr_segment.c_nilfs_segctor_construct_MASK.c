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
struct the_nilfs {int /*<<< orphan*/  ns_sem; int /*<<< orphan*/  ns_ndirtyblks; } ;
struct nilfs_segctor_req {scalar_t__ mode; int sc_err; int /*<<< orphan*/  sb_err; } ;
struct nilfs_sc_info {int /*<<< orphan*/  sc_flags; struct nilfs_sb_info* sc_sbi; } ;
struct nilfs_sb_info {struct the_nilfs* s_nilfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  NILFS_SC_SUPER_ROOT ; 
 scalar_t__ SC_FLUSH_DAT ; 
 scalar_t__ SC_LSEG_SR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC6 (struct nilfs_sc_info*) ; 
 int FUNC7 (struct nilfs_sc_info*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct nilfs_sc_info *sci,
				   struct nilfs_segctor_req *req)
{
	struct nilfs_sb_info *sbi = sci->sc_sbi;
	struct the_nilfs *nilfs = sbi->s_nilfs;
	int err = 0;

	if (FUNC5(nilfs))
		req->mode = SC_LSEG_SR;
	if (!FUNC6(sci)) {
		err = FUNC7(sci, req->mode);
		req->sc_err = err;
	}
	if (FUNC2(!err)) {
		if (req->mode != SC_FLUSH_DAT)
			FUNC0(&nilfs->ns_ndirtyblks, 0);
		if (FUNC8(NILFS_SC_SUPER_ROOT, &sci->sc_flags) &&
		    FUNC5(nilfs)) {
			FUNC1(&nilfs->ns_sem);
			req->sb_err = FUNC4(sbi,
					FUNC3(nilfs));
			FUNC9(&nilfs->ns_sem);
		}
	}
	return err;
}