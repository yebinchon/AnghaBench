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
typedef  int uint16_t ;
struct cifs_fscache_inode_auxdata {int /*<<< orphan*/  last_change_time; int /*<<< orphan*/  last_write_time; int /*<<< orphan*/  eof; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct cifsInodeInfo {TYPE_1__ vfs_inode; int /*<<< orphan*/  server_eof; } ;
typedef  int /*<<< orphan*/  auxdata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,struct cifs_fscache_inode_auxdata*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cifs_fscache_inode_auxdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint16_t
FUNC2(const void *cookie_netfs_data, void *buffer,
			   uint16_t maxbuf)
{
	struct cifs_fscache_inode_auxdata auxdata;
	const struct cifsInodeInfo *cifsi = cookie_netfs_data;

	FUNC1(&auxdata, 0, sizeof(auxdata));
	auxdata.eof = cifsi->server_eof;
	auxdata.last_write_time = cifsi->vfs_inode.i_mtime;
	auxdata.last_change_time = cifsi->vfs_inode.i_ctime;

	if (maxbuf > sizeof(auxdata))
		maxbuf = sizeof(auxdata);

	FUNC0(buffer, &auxdata, maxbuf);

	return maxbuf;
}