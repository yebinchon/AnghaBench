#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zfs_userquota_prop_t ;
typedef  int /*<<< orphan*/  zfs_sort_column_t ;
typedef  int /*<<< orphan*/  uu_avl_t ;
typedef  int /*<<< orphan*/  uu_avl_pool_t ;
typedef  int /*<<< orphan*/  uu_avl_index_t ;
struct TYPE_11__ {scalar_t__ member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ us_sort_info_t ;
struct TYPE_12__ {int /*<<< orphan*/ * usn_nvl; int /*<<< orphan*/  usn_avlnode; } ;
typedef  TYPE_2__ us_node_t ;
struct TYPE_13__ {scalar_t__ cb_prop; size_t* cb_width; scalar_t__ cb_nicenum; scalar_t__ cb_sid2posix; scalar_t__ cb_numname; int /*<<< orphan*/ * cb_sortcol; int /*<<< orphan*/ * cb_avl; int /*<<< orphan*/ * cb_avl_pool; } ;
typedef  TYPE_3__ us_cbdata_t ;
typedef  int uint64_t ;
typedef  int uid_t ;
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;
typedef  int /*<<< orphan*/  sizebuf ;
typedef  int /*<<< orphan*/  sid ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int IDMAP_REQ_FLG_USE_CACHE ; 
 int /*<<< orphan*/  MAXNAMELEN ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 unsigned int USTYPE_PSX_GRP ; 
 unsigned int USTYPE_PSX_USR ; 
 unsigned int USTYPE_SMB_GRP ; 
 unsigned int USTYPE_SMB_USR ; 
 scalar_t__ ZFS_PROP_GROUPQUOTA ; 
 scalar_t__ ZFS_PROP_GROUPUSED ; 
 scalar_t__ ZFS_PROP_USERUSED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct group* FUNC1 (int) ; 
 struct passwd* FUNC2 (int) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC14 (int) ; 
 int FUNC15 (char*,int /*<<< orphan*/ ,int*) ; 
 size_t FUNC16 (char*,int,char*,...) ; 
 size_t FUNC17 (char*) ; 
 int FUNC18 (char*) ; 
 char* FUNC19 (unsigned int) ; 
 TYPE_2__* FUNC20 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int,char*,int) ; 

__attribute__((used)) static int
FUNC24(void *arg, const char *domain, uid_t rid, uint64_t space)
{
	us_cbdata_t *cb = (us_cbdata_t *)arg;
	zfs_userquota_prop_t prop = cb->cb_prop;
	char *name = NULL;
	char *propname;
	char sizebuf[32];
	us_node_t *node;
	uu_avl_pool_t *avl_pool = cb->cb_avl_pool;
	uu_avl_t *avl = cb->cb_avl;
	uu_avl_index_t idx;
	nvlist_t *props;
	us_node_t *n;
	zfs_sort_column_t *sortcol = cb->cb_sortcol;
	unsigned type = 0;
	const char *typestr;
	size_t namelen;
	size_t typelen;
	size_t sizelen;
	int typeidx, nameidx, sizeidx;
	us_sort_info_t sortinfo = { sortcol, cb->cb_numname };
	boolean_t smbentity = B_FALSE;

	if (FUNC11(&props, NV_UNIQUE_NAME, 0) != 0)
		FUNC6();
	node = FUNC14(sizeof (us_node_t));
	FUNC22(node, &node->usn_avlnode, avl_pool);
	node->usn_nvl = props;

	if (domain != NULL && domain[0] != '\0') {
		/* SMB */
		char sid[MAXNAMELEN + 32];
		uid_t id;
#ifdef illumos
		int err;
		int flag = IDMAP_REQ_FLG_USE_CACHE;
#endif

		smbentity = B_TRUE;

		(void) FUNC16(sid, sizeof (sid), "%s-%u", domain, rid);

		if (prop == ZFS_PROP_GROUPUSED || prop == ZFS_PROP_GROUPQUOTA) {
			type = USTYPE_SMB_GRP;
#ifdef illumos
			err = sid_to_id(sid, B_FALSE, &id);
#endif
		} else {
			type = USTYPE_SMB_USR;
#ifdef illumos
			err = sid_to_id(sid, B_TRUE, &id);
#endif
		}

#ifdef illumos
		if (err == 0) {
			rid = id;
			if (!cb->cb_sid2posix) {
				if (type == USTYPE_SMB_USR) {
					(void) idmap_getwinnamebyuid(rid, flag,
					    &name, NULL);
				} else {
					(void) idmap_getwinnamebygid(rid, flag,
					    &name, NULL);
				}
				if (name == NULL)
					name = sid;
			}
		}
#endif
	}

	if (cb->cb_sid2posix || domain == NULL || domain[0] == '\0') {
		/* POSIX or -i */
		if (prop == ZFS_PROP_GROUPUSED || prop == ZFS_PROP_GROUPQUOTA) {
			type = USTYPE_PSX_GRP;
			if (!cb->cb_numname) {
				struct group *g;

				if ((g = FUNC1(rid)) != NULL)
					name = g->gr_name;
			}
		} else {
			type = USTYPE_PSX_USR;
			if (!cb->cb_numname) {
				struct passwd *p;

				if ((p = FUNC2(rid)) != NULL)
					name = p->pw_name;
			}
		}
	}

	/*
	 * Make sure that the type/name combination is unique when doing
	 * SID to POSIX ID translation (hence changing the type from SMB to
	 * POSIX).
	 */
	if (cb->cb_sid2posix &&
	    FUNC7(props, "smbentity", smbentity) != 0)
		FUNC6();

	/* Calculate/update width of TYPE field */
	typestr = FUNC19(type);
	typelen = FUNC17(FUNC3(typestr));
	typeidx = FUNC18("type");
	if (typelen > cb->cb_width[typeidx])
		cb->cb_width[typeidx] = typelen;
	if (FUNC9(props, "type", type) != 0)
		FUNC6();

	/* Calculate/update width of NAME field */
	if ((cb->cb_numname && cb->cb_sid2posix) || name == NULL) {
		if (FUNC10(props, "name", rid) != 0)
			FUNC6();
		namelen = FUNC16(NULL, 0, "%u", rid);
	} else {
		if (FUNC8(props, "name", name) != 0)
			FUNC6();
		namelen = FUNC17(name);
	}
	nameidx = FUNC18("name");
	if (namelen > cb->cb_width[nameidx])
		cb->cb_width[nameidx] = namelen;

	/*
	 * Check if this type/name combination is in the list and update it;
	 * otherwise add new node to the list.
	 */
	if ((n = FUNC20(avl, node, &sortinfo, &idx)) == NULL) {
		FUNC21(avl, node, idx);
	} else {
		FUNC13(props);
		FUNC0(node);
		node = n;
		props = node->usn_nvl;
	}

	/* Calculate/update width of USED/QUOTA fields */
	if (cb->cb_nicenum)
		FUNC23(space, sizebuf, sizeof (sizebuf));
	else
		(void) FUNC16(sizebuf, sizeof (sizebuf), "%llu", space);
	sizelen = FUNC17(sizebuf);
	if (prop == ZFS_PROP_USERUSED || prop == ZFS_PROP_GROUPUSED) {
		propname = "used";
		if (!FUNC12(props, "quota"))
			(void) FUNC10(props, "quota", 0);
	} else {
		propname = "quota";
		if (!FUNC12(props, "used"))
			(void) FUNC10(props, "used", 0);
	}
	sizeidx = FUNC18(propname);
	if (sizelen > cb->cb_width[sizeidx])
		cb->cb_width[sizeidx] = sizelen;

	if (FUNC10(props, propname, space) != 0)
		FUNC6();

	return (0);
}