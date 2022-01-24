#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct p9_wstat {int size; int /*<<< orphan*/  qid; int /*<<< orphan*/  name; } ;
struct p9_rdir {int head; int tail; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * buf; } ;
struct p9_fid {TYPE_5__* clnt; void* rdir; } ;
struct TYPE_8__ {TYPE_2__* dentry; } ;
struct file {int f_pos; TYPE_4__* f_dentry; struct p9_fid* private_data; TYPE_3__ f_path; } ;
typedef  int (* filldir_t ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
struct TYPE_10__ {int msize; int /*<<< orphan*/  dotu; } ;
struct TYPE_9__ {int /*<<< orphan*/  d_lock; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int P9_IOHDRSZ ; 
 int /*<<< orphan*/  FUNC1 (struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC2 (struct p9_rdir*) ; 
 struct p9_rdir* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_wstat*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,struct p9_wstat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct file *filp, void *dirent, filldir_t filldir)
{
	int over;
	struct p9_wstat st;
	int err = 0;
	struct p9_fid *fid;
	int buflen;
	int reclen = 0;
	struct p9_rdir *rdir;

	FUNC0(P9_DEBUG_VFS, "name %s\n", filp->f_path.dentry->d_name.name);
	fid = filp->private_data;

	buflen = fid->clnt->msize - P9_IOHDRSZ;

	/* allocate rdir on demand */
	if (!fid->rdir) {
		rdir = FUNC3(sizeof(struct p9_rdir) + buflen, GFP_KERNEL);

		if (rdir == NULL) {
			err = -ENOMEM;
			goto exit;
		}
		FUNC9(&filp->f_dentry->d_lock);
		if (!fid->rdir) {
			rdir->buf = (uint8_t *)rdir + sizeof(struct p9_rdir);
			FUNC4(&rdir->mutex);
			rdir->head = rdir->tail = 0;
			fid->rdir = (void *) rdir;
			rdir = NULL;
		}
		FUNC10(&filp->f_dentry->d_lock);
		FUNC2(rdir);
	}
	rdir = (struct p9_rdir *) fid->rdir;

	err = FUNC5(&rdir->mutex);
	while (err == 0) {
		if (rdir->tail == rdir->head) {
			err = FUNC12(filp, rdir->buf, NULL,
							buflen, filp->f_pos);
			if (err <= 0)
				goto unlock_and_exit;

			rdir->head = 0;
			rdir->tail = err;
		}

		while (rdir->head < rdir->tail) {
			err = FUNC8(rdir->buf + rdir->head,
						buflen - rdir->head, &st,
						fid->clnt->dotu);
			if (err) {
				FUNC0(P9_DEBUG_VFS, "returned %d\n", err);
				err = -EIO;
				FUNC7(&st);
				goto unlock_and_exit;
			}
			reclen = st.size+2;

			over = filldir(dirent, st.name, FUNC11(st.name),
			    filp->f_pos, FUNC13(&st.qid), FUNC1(&st));

			FUNC7(&st);

			if (over) {
				err = 0;
				goto unlock_and_exit;
			}
			rdir->head += reclen;
			filp->f_pos += reclen;
		}
	}

unlock_and_exit:
	FUNC6(&rdir->mutex);
exit:
	return err;
}