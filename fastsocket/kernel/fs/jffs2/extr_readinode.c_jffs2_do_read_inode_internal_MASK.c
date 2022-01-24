#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_readinode_info {scalar_t__ latest_ref; size_t mctime_ver; scalar_t__ latest_mctime; int /*<<< orphan*/  fds; TYPE_2__* mdata_tn; int /*<<< orphan*/  tn_root; } ;
struct jffs2_raw_inode {int /*<<< orphan*/  mode; void* csize; void* dsize; void* isize; void* mtime; void* ctime; void* version; void* node_crc; void* uid; void* gid; void* atime; } ;
struct jffs2_inode_info {char* target; TYPE_1__* inocache; int /*<<< orphan*/  fragtree; TYPE_5__* metadata; int /*<<< orphan*/  sem; int /*<<< orphan*/  dents; } ;
typedef  int /*<<< orphan*/  rii ;
struct TYPE_11__ {scalar_t__ raw; } ;
struct TYPE_10__ {TYPE_5__* node; } ;
struct TYPE_9__ {TYPE_5__* fn; } ;
struct TYPE_8__ {int ino; scalar_t__ state; int /*<<< orphan*/  pino_nlink; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INO_STATE_CHECKEDABSENT ; 
 scalar_t__ INO_STATE_CHECKING ; 
 int /*<<< orphan*/  INO_STATE_PRESENT ; 
 scalar_t__ INO_STATE_READING ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  RB_ROOT ; 
#define  S_IFBLK 132 
#define  S_IFCHR 131 
#define  S_IFDIR 130 
#define  S_IFLNK 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int S_IRUGO ; 
 int S_IWUSR ; 
 int S_IXUGO ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct jffs2_raw_inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 size_t FUNC10 (void*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct jffs2_sb_info*,struct jffs2_inode_info*,struct jffs2_readinode_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct jffs2_inode_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct jffs2_sb_info*,struct jffs2_inode_info*) ; 
 int FUNC15 (struct jffs2_sb_info*,int,size_t,size_t*,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (struct jffs2_sb_info*,struct jffs2_inode_info*,struct jffs2_readinode_info*) ; 
 int /*<<< orphan*/  FUNC21 (struct jffs2_sb_info*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (struct jffs2_sb_info*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct jffs2_sb_info*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 char* FUNC25 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct jffs2_readinode_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int FUNC28 (scalar_t__) ; 
 scalar_t__ FUNC29 (int) ; 

__attribute__((used)) static int FUNC30(struct jffs2_sb_info *c,
					struct jffs2_inode_info *f,
					struct jffs2_raw_inode *latest_node)
{
	struct jffs2_readinode_info rii;
	uint32_t crc, new_size;
	size_t retlen;
	int ret;

	FUNC7("ino #%u pino/nlink is %d\n", f->inocache->ino,
		      f->inocache->pino_nlink);

	FUNC26(&rii, 0, sizeof(rii));

	/* Grab all nodes relevant to this ino */
	ret = FUNC20(c, f, &rii);

	if (ret) {
		FUNC0("cannot read nodes for ino %u, returned error is %d\n", f->inocache->ino, ret);
		if (f->inocache->state == INO_STATE_READING)
			FUNC22(c, f->inocache, INO_STATE_CHECKEDABSENT);
		return ret;
	}

	ret = FUNC12(c, f, &rii);
	if (ret) {
		FUNC0("Failed to build final fragtree for inode #%u: error %d\n",
			    f->inocache->ino, ret);
		if (f->inocache->state == INO_STATE_READING)
			FUNC22(c, f->inocache, INO_STATE_CHECKEDABSENT);
		FUNC19(&rii.tn_root);
		/* FIXME: We could at least crc-check them all */
		if (rii.mdata_tn) {
			FUNC16(rii.mdata_tn->fn);
			FUNC18(rii.mdata_tn);
			rii.mdata_tn = NULL;
		}
		return ret;
	}

	if (rii.mdata_tn) {
		if (rii.mdata_tn->fn->raw == rii.latest_ref) {
			f->metadata = rii.mdata_tn->fn;
			FUNC18(rii.mdata_tn);
		} else {
			FUNC21(c, rii.mdata_tn);
		}
		rii.mdata_tn = NULL;
	}

	f->dents = rii.fds;

	FUNC13(f);

	if (FUNC29(!rii.latest_ref)) {
		/* No data nodes for this inode. */
		if (f->inocache->ino != 1) {
			FUNC2("no data nodes found for ino #%u\n", f->inocache->ino);
			if (!rii.fds) {
				if (f->inocache->state == INO_STATE_READING)
					FUNC22(c, f->inocache, INO_STATE_CHECKEDABSENT);
				return -EIO;
			}
			FUNC1("but it has children so we fake some modes for it\n");
		}
		latest_node->mode = FUNC5(S_IFDIR|S_IRUGO|S_IWUSR|S_IXUGO);
		latest_node->version = FUNC4(0);
		latest_node->atime = latest_node->ctime = latest_node->mtime = FUNC4(0);
		latest_node->isize = FUNC4(0);
		latest_node->gid = FUNC3(0);
		latest_node->uid = FUNC3(0);
		if (f->inocache->state == INO_STATE_READING)
			FUNC22(c, f->inocache, INO_STATE_PRESENT);
		return 0;
	}

	ret = FUNC15(c, FUNC28(rii.latest_ref), sizeof(*latest_node), &retlen, (void *)latest_node);
	if (ret || retlen != sizeof(*latest_node)) {
		FUNC0("failed to read from flash: error %d, %zd of %zd bytes read\n",
			ret, retlen, sizeof(*latest_node));
		/* FIXME: If this fails, there seems to be a memory leak. Find it. */
		FUNC27(&f->sem);
		FUNC14(c, f);
		return ret?ret:-EIO;
	}

	crc = FUNC6(0, latest_node, sizeof(*latest_node)-8);
	if (crc != FUNC10(latest_node->node_crc)) {
		FUNC0("CRC failed for read_inode of inode %u at physical location 0x%x\n",
			f->inocache->ino, FUNC28(rii.latest_ref));
		FUNC27(&f->sem);
		FUNC14(c, f);
		return -EIO;
	}

	switch(FUNC11(latest_node->mode) & S_IFMT) {
	case S_IFDIR:
		if (rii.mctime_ver > FUNC10(latest_node->version)) {
			/* The times in the latest_node are actually older than
			   mctime in the latest dirent. Cheat. */
			latest_node->ctime = latest_node->mtime = FUNC4(rii.latest_mctime);
		}
		break;


	case S_IFREG:
		/* If it was a regular file, truncate it to the latest node's isize */
		new_size = FUNC23(c, &f->fragtree, FUNC10(latest_node->isize));
		if (new_size != FUNC10(latest_node->isize)) {
			FUNC2("Truncating ino #%u to %d bytes failed because it only had %d bytes to start with!\n",
				      f->inocache->ino, FUNC10(latest_node->isize), new_size);
			latest_node->isize = FUNC4(new_size);
		}
		break;

	case S_IFLNK:
		/* Hack to work around broken isize in old symlink code.
		   Remove this when dwmw2 comes to his senses and stops
		   symlinks from being an entirely gratuitous special
		   case. */
		if (!FUNC10(latest_node->isize))
			latest_node->isize = latest_node->dsize;

		if (f->inocache->state != INO_STATE_CHECKING) {
			/* Symlink's inode data is the target path. Read it and
			 * keep in RAM to facilitate quick follow symlink
			 * operation. */
			f->target = FUNC25(FUNC10(latest_node->csize) + 1, GFP_KERNEL);
			if (!f->target) {
				FUNC0("can't allocate %d bytes of memory for the symlink target path cache\n", FUNC10(latest_node->csize));
				FUNC27(&f->sem);
				FUNC14(c, f);
				return -ENOMEM;
			}

			ret = FUNC15(c, FUNC28(rii.latest_ref) + sizeof(*latest_node),
						FUNC10(latest_node->csize), &retlen, (char *)f->target);

			if (ret  || retlen != FUNC10(latest_node->csize)) {
				if (retlen != FUNC10(latest_node->csize))
					ret = -EIO;
				FUNC24(f->target);
				f->target = NULL;
				FUNC27(&f->sem);
				FUNC14(c, f);
				return -ret;
			}

			f->target[FUNC10(latest_node->csize)] = '\0';
			FUNC7("symlink's target '%s' cached\n", f->target);
		}

		/* fall through... */

	case S_IFBLK:
	case S_IFCHR:
		/* Certain inode types should have only one data node, and it's
		   kept as the metadata node */
		if (f->metadata) {
			FUNC0("Argh. Special inode #%u with mode 0%o had metadata node\n",
			       f->inocache->ino, FUNC11(latest_node->mode));
			FUNC27(&f->sem);
			FUNC14(c, f);
			return -EIO;
		}
		if (!FUNC8(&f->fragtree)) {
			FUNC0("Argh. Special inode #%u with mode 0%o has no fragments\n",
			       f->inocache->ino, FUNC11(latest_node->mode));
			FUNC27(&f->sem);
			FUNC14(c, f);
			return -EIO;
		}
		/* ASSERT: f->fraglist != NULL */
		if (FUNC9(FUNC8(&f->fragtree))) {
			FUNC0("Argh. Special inode #%u with mode 0x%x had more than one node\n",
			       f->inocache->ino, FUNC11(latest_node->mode));
			/* FIXME: Deal with it - check crc32, check for duplicate node, check times and discard the older one */
			FUNC27(&f->sem);
			FUNC14(c, f);
			return -EIO;
		}
		/* OK. We're happy */
		f->metadata = FUNC8(&f->fragtree)->node;
		FUNC17(FUNC8(&f->fragtree));
		f->fragtree = RB_ROOT;
		break;
	}
	if (f->inocache->state == INO_STATE_READING)
		FUNC22(c, f->inocache, INO_STATE_PRESENT);

	return 0;
}