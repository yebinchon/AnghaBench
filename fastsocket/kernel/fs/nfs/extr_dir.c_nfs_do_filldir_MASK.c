#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nfs_open_dir_context {int duped; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct nfs_cache_array_entry {scalar_t__ cookie; int /*<<< orphan*/  d_type; int /*<<< orphan*/  ino; TYPE_1__ string; } ;
struct nfs_cache_array {int size; scalar_t__ eof_index; scalar_t__ last_cookie; struct nfs_cache_array_entry* array; } ;
struct file {int /*<<< orphan*/  f_pos; struct nfs_open_dir_context* private_data; } ;
struct TYPE_6__ {int cache_entry_index; int eof; scalar_t__* dir_cookie; int /*<<< orphan*/  page; struct file* file; } ;
typedef  TYPE_2__ nfs_readdir_descriptor_t ;
typedef  scalar_t__ (* filldir_t ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  DIRCACHE ; 
 scalar_t__ FUNC0 (struct nfs_cache_array*) ; 
 int FUNC1 (struct nfs_cache_array*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct nfs_cache_array* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static 
int FUNC7(nfs_readdir_descriptor_t *desc, void *dirent,
		   filldir_t filldir)
{
	struct file	*file = desc->file;
	int i = 0;
	int res = 0;
	struct nfs_cache_array *array = NULL;
	struct nfs_open_dir_context *ctx = file->private_data;

	array = FUNC5(desc->page);
	if (FUNC0(array)) {
		res = FUNC1(array);
		goto out;
	}

	for (i = desc->cache_entry_index; i < array->size; i++) {
		struct nfs_cache_array_entry *ent;

		ent = &array->array[i];
		if (filldir(dirent, ent->string.name, ent->string.len,
		    file->f_pos, FUNC4(ent->ino),
		    ent->d_type) < 0) {
			desc->eof = 1;
			break;
		}
		file->f_pos++;
		if (i < (array->size-1))
			*desc->dir_cookie = array->array[i+1].cookie;
		else
			*desc->dir_cookie = array->last_cookie;
		if (ctx->duped != 0)
			ctx->duped = 1;
	}
	if (array->eof_index >= 0)
		desc->eof = 1;

	FUNC6(desc->page);
out:
	FUNC2(desc);
	FUNC3(DIRCACHE, "NFS: nfs_do_filldir() filling ended @ cookie %Lu; returning = %d\n",
			(unsigned long long)*desc->dir_cookie, res);
	return res;
}