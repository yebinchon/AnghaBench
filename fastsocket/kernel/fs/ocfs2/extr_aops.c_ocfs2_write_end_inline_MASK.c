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
struct ocfs2_write_ctxt {int /*<<< orphan*/  w_target_page; } ;
struct TYPE_3__ {int id_data; int /*<<< orphan*/  id_count; } ;
struct TYPE_4__ {TYPE_1__ i_data; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_dyn_features; TYPE_2__ id2; } ;
struct inode {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct inode *inode, loff_t pos,
				   unsigned len, unsigned *copied,
				   struct ocfs2_dinode *di,
				   struct ocfs2_write_ctxt *wc)
{
	void *kaddr;

	if (FUNC6(*copied < len)) {
		if (!FUNC0(wc->w_target_page)) {
			*copied = 0;
			return;
		}
	}

	kaddr = FUNC1(wc->w_target_page, KM_USER0);
	FUNC4(di->id2.i_data.id_data + pos, kaddr + pos, *copied);
	FUNC2(kaddr, KM_USER0);

	FUNC5(0, "Data written to inode at offset %llu. "
	     "id_count = %u, copied = %u, i_dyn_features = 0x%x\n",
	     (unsigned long long)pos, *copied,
	     FUNC3(di->id2.i_data.id_count),
	     FUNC3(di->i_dyn_features));
}