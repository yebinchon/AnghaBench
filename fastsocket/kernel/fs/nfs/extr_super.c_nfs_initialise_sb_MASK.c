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
struct super_block {int /*<<< orphan*/ * s_bdi; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; int /*<<< orphan*/  s_dev; int /*<<< orphan*/  s_id; int /*<<< orphan*/  s_magic; } ;
struct nfs_server {int /*<<< orphan*/  maxfilesize; int /*<<< orphan*/  backing_dev_info; int /*<<< orphan*/  wsize; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfs_server* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  NFS_SUPER_MAGIC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int,int) ; 

__attribute__((used)) static inline void FUNC6(struct super_block *sb)
{
	struct nfs_server *server = FUNC2(sb);

	sb->s_magic = NFS_SUPER_MAGIC;

	/* We probably want something more informative here */
	FUNC5(sb->s_id, sizeof(sb->s_id),
		 "%x:%x", FUNC0(sb->s_dev), FUNC1(sb->s_dev));

	if (sb->s_blocksize == 0)
		sb->s_blocksize = FUNC3(server->wsize,
						 &sb->s_blocksize_bits);

	sb->s_bdi = &server->backing_dev_info;

	FUNC4(sb, server->maxfilesize);
}