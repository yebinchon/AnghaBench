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
struct dentry {int /*<<< orphan*/  i_ino; struct dentry* d_inode; } ;
struct cachefiles_xattr {int len; scalar_t__ type; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {TYPE_2__* cookie; } ;
struct cachefiles_object {TYPE_3__ fscache; struct dentry* dentry; } ;
typedef  enum fscache_checkaux { ____Placeholder_fscache_checkaux } fscache_checkaux ;
struct TYPE_5__ {TYPE_1__* def; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; scalar_t__ check_aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EIO ; 
 int ENODATA ; 
 int ENOMEM ; 
 int ERANGE ; 
 int ESTALE ; 
#define  FSCACHE_CHECKAUX_NEEDS_UPDATE 130 
#define  FSCACHE_CHECKAUX_OBSOLETE 129 
#define  FSCACHE_CHECKAUX_OKAY 128 
 int /*<<< orphan*/  XATTR_REPLACE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct cachefiles_object*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  cachefiles_gfp ; 
 int /*<<< orphan*/  FUNC5 (struct cachefiles_object*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cachefiles_xattr_cache ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cachefiles_xattr*) ; 
 struct cachefiles_xattr* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct dentry*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC11 (struct dentry*,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ) ; 

int FUNC12(struct cachefiles_object *object,
				  struct cachefiles_xattr *auxdata)
{
	struct cachefiles_xattr *auxbuf;
	struct dentry *dentry = object->dentry;
	int ret;

	FUNC3("%p,#%d", object, auxdata->len);

	FUNC0(dentry);
	FUNC0(dentry->d_inode);

	auxbuf = FUNC9(sizeof(struct cachefiles_xattr) + 512, cachefiles_gfp);
	if (!auxbuf) {
		FUNC4(" = -ENOMEM");
		return -ENOMEM;
	}

	/* read the current type label */
	ret = FUNC10(dentry, cachefiles_xattr_cache,
			   &auxbuf->type, 512 + 1);
	if (ret < 0) {
		if (ret == -ENODATA)
			goto stale; /* no attribute - power went off
				     * mid-cull? */

		if (ret == -ERANGE)
			goto bad_type_length;

		FUNC5(object,
					"Can't read xattr on %lu (err %d)",
					dentry->d_inode->i_ino, -ret);
		goto error;
	}

	/* check the on-disk object */
	if (ret < 1)
		goto bad_type_length;

	if (auxbuf->type != auxdata->type)
		goto stale;

	auxbuf->len = ret;

	/* consult the netfs */
	if (object->fscache.cookie->def->check_aux) {
		enum fscache_checkaux result;
		unsigned int dlen;

		dlen = auxbuf->len - 1;

		FUNC2("checkaux %s #%u",
		       object->fscache.cookie->def->name, dlen);

		result = FUNC6(&object->fscache,
					   &auxbuf->data, dlen);

		switch (result) {
			/* entry okay as is */
		case FSCACHE_CHECKAUX_OKAY:
			goto okay;

			/* entry requires update */
		case FSCACHE_CHECKAUX_NEEDS_UPDATE:
			break;

			/* entry requires deletion */
		case FSCACHE_CHECKAUX_OBSOLETE:
			goto stale;

		default:
			FUNC1();
		}

		/* update the current label */
		ret = FUNC11(dentry, cachefiles_xattr_cache,
				   &auxdata->type, auxdata->len,
				   XATTR_REPLACE);
		if (ret < 0) {
			FUNC5(object,
						"Can't update xattr on %lu"
						" (error %d)",
						dentry->d_inode->i_ino, -ret);
			goto error;
		}
	}

okay:
	ret = 0;

error:
	FUNC8(auxbuf);
	FUNC4(" = %d", ret);
	return ret;

bad_type_length:
	FUNC7("Cache object %lu xattr length incorrect",
	       dentry->d_inode->i_ino);
	ret = -EIO;
	goto error;

stale:
	ret = -ESTALE;
	goto error;
}