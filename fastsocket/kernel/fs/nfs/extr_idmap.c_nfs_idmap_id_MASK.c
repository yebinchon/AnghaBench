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
struct rpc_pipe_msg {int len; int im_status; int /*<<< orphan*/  im_id; struct rpc_pipe_msg* data; int /*<<< orphan*/  im_conv; int /*<<< orphan*/  im_type; int /*<<< orphan*/  im_name; } ;
struct idmap_msg {int len; int im_status; int /*<<< orphan*/  im_id; struct idmap_msg* data; int /*<<< orphan*/  im_conv; int /*<<< orphan*/  im_type; int /*<<< orphan*/  im_name; } ;
struct idmap_hashtable {int /*<<< orphan*/  h_type; } ;
struct idmap_hashent {int /*<<< orphan*/  ih_id; } ;
struct idmap {int /*<<< orphan*/  idmap_lock; int /*<<< orphan*/  idmap_im_lock; int /*<<< orphan*/  idmap_wq; TYPE_1__* idmap_dentry; struct rpc_pipe_msg idmap_im; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  IDMAP_CONV_NAMETOID ; 
 size_t IDMAP_NAMESZ ; 
 int IDMAP_STATUS_SUCCESS ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 struct idmap_hashent* FUNC3 (struct idmap_hashtable*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_pipe_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct rpc_pipe_msg*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static int
FUNC12(struct idmap *idmap, struct idmap_hashtable *h,
		const char *name, size_t namelen, __u32 *id)
{
	struct rpc_pipe_msg msg;
	struct idmap_msg *im;
	struct idmap_hashent *he;
	FUNC0(wq, current);
	int ret = -EIO;

	im = &idmap->idmap_im;

	/*
	 * String sanity checks
	 * Note that the userland daemon expects NUL terminated strings
	 */
	for (;;) {
		if (namelen == 0)
			return -EINVAL;
		if (name[namelen-1] != '\0')
			break;
		namelen--;
	}
	if (namelen >= IDMAP_NAMESZ)
		return -EINVAL;

	FUNC6(&idmap->idmap_lock);
	FUNC6(&idmap->idmap_im_lock);

	he = FUNC3(h, name, namelen);
	if (he != NULL) {
		*id = he->ih_id;
		ret = 0;
		goto out;
	}

	FUNC5(im, 0, sizeof(*im));
	FUNC4(im->im_name, name, namelen);

	im->im_type = h->h_type;
	im->im_conv = IDMAP_CONV_NAMETOID;

	FUNC5(&msg, 0, sizeof(msg));
	msg.data = im;
	msg.len = sizeof(*im);

	FUNC2(&idmap->idmap_wq, &wq);
	if (FUNC9(idmap->idmap_dentry->d_inode, &msg) < 0) {
		FUNC8(&idmap->idmap_wq, &wq);
		goto out;
	}

	FUNC11(TASK_UNINTERRUPTIBLE);
	FUNC7(&idmap->idmap_im_lock);
	FUNC10();
	FUNC1(TASK_RUNNING);
	FUNC8(&idmap->idmap_wq, &wq);
	FUNC6(&idmap->idmap_im_lock);

	if (im->im_status & IDMAP_STATUS_SUCCESS) {
		*id = im->im_id;
		ret = 0;
	}

 out:
	FUNC5(im, 0, sizeof(*im));
	FUNC7(&idmap->idmap_im_lock);
	FUNC7(&idmap->idmap_lock);
	return ret;
}