#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct ocfs2_super {int /*<<< orphan*/  la_last_gd; int /*<<< orphan*/  osb_lock; void* local_alloc_bits; TYPE_1__* local_alloc_bh; } ;
struct ocfs2_local_alloc {void* la_bm_off; int /*<<< orphan*/  la_size; int /*<<< orphan*/  la_bitmap; } ;
struct TYPE_5__ {void* i_total; scalar_t__ i_used; } ;
struct TYPE_6__ {TYPE_2__ bitmap1; } ;
struct ocfs2_dinode {TYPE_3__ id1; } ;
struct ocfs2_alloc_context {int /*<<< orphan*/  ac_last_group; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ OCFS2_LA_DISABLED ; 
 int /*<<< orphan*/  OCFS2_LA_EVENT_FRAGMENTED ; 
 struct ocfs2_local_alloc* FUNC0 (struct ocfs2_dinode*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,void*,void**,void**) ; 
 scalar_t__ FUNC10 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct ocfs2_super *osb,
					handle_t *handle,
					struct ocfs2_alloc_context *ac)
{
	int status = 0;
	u32 cluster_off, cluster_count;
	struct ocfs2_dinode *alloc = NULL;
	struct ocfs2_local_alloc *la;

	FUNC6();

	alloc = (struct ocfs2_dinode *) osb->local_alloc_bh->b_data;
	la = FUNC0(alloc);

	if (alloc->id1.bitmap1.i_total)
		FUNC5(0, "asking me to alloc a new window over a non-empty "
		     "one\n");

	FUNC5(0, "Allocating %u clusters for a new window.\n",
	     osb->local_alloc_bits);

	/* Instruct the allocation code to try the most recently used
	 * cluster group. We'll re-record the group used this pass
	 * below. */
	ac->ac_last_group = osb->la_last_gd;

	/* we used the generic suballoc reserve function, but we set
	 * everything up nicely, so there's no reason why we can't use
	 * the more specific cluster api to claim bits. */
	status = FUNC9(osb, handle, ac, osb->local_alloc_bits,
				      &cluster_off, &cluster_count);
	if (status == -ENOSPC) {
retry_enospc:
		/*
		 * Note: We could also try syncing the journal here to
		 * allow use of any free bits which the current
		 * transaction can't give us access to. --Mark
		 */
		if (FUNC10(osb, OCFS2_LA_EVENT_FRAGMENTED) ==
		    OCFS2_LA_DISABLED)
			goto bail;

		status = FUNC9(osb, handle, ac,
					      osb->local_alloc_bits,
					      &cluster_off,
					      &cluster_count);
		if (status == -ENOSPC)
			goto retry_enospc;
		/*
		 * We only shrunk the *minimum* number of in our
		 * request - it's entirely possible that the allocator
		 * might give us more than we asked for.
		 */
		if (status == 0) {
			FUNC11(&osb->osb_lock);
			osb->local_alloc_bits = cluster_count;
			FUNC12(&osb->osb_lock);
		}
	}
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC7(status);
		goto bail;
	}

	osb->la_last_gd = ac->ac_last_group;

	la->la_bm_off = FUNC1(cluster_off);
	alloc->id1.bitmap1.i_total = FUNC1(cluster_count);
	/* just in case... In the future when we find space ourselves,
	 * we don't have to get all contiguous -- but we'll have to
	 * set all previously used bits in bitmap and update
	 * la_bits_set before setting the bits in the main bitmap. */
	alloc->id1.bitmap1.i_used = 0;
	FUNC4(FUNC0(alloc)->la_bitmap, 0,
	       FUNC2(la->la_size));

	FUNC5(0, "New window allocated:\n");
	FUNC5(0, "window la_bm_off = %u\n",
	     FUNC0(alloc)->la_bm_off);
	FUNC5(0, "window bits = %u\n", FUNC3(alloc->id1.bitmap1.i_total));

bail:
	FUNC8(status);
	return status;
}