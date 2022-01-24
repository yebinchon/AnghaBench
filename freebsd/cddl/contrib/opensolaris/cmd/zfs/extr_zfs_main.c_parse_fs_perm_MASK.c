#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int zfs_deleg_who_type_t ;
struct TYPE_14__ {int /*<<< orphan*/  who_ug_name; } ;
typedef  TYPE_1__ who_perm_t ;
struct TYPE_15__ {TYPE_1__ who_perm; int /*<<< orphan*/  who_avl_node; } ;
typedef  TYPE_2__ who_perm_node_t ;
typedef  int /*<<< orphan*/  uu_avl_t ;
typedef  int /*<<< orphan*/  uu_avl_pool_t ;
typedef  int /*<<< orphan*/  uu_avl_index_t ;
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_16__ {int /*<<< orphan*/ * fsp_uge_avl; int /*<<< orphan*/ * fsp_sc_avl; TYPE_4__* fsp_set; } ;
typedef  TYPE_3__ fs_perm_t ;
struct TYPE_17__ {int /*<<< orphan*/ * fsps_who_perm_avl_pool; int /*<<< orphan*/ * fsps_named_set_avl_pool; } ;
typedef  TYPE_4__ fs_perm_set_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_TRUE ; 
#define  ZFS_DELEG_CREATE 137 
#define  ZFS_DELEG_CREATE_SETS 136 
#define  ZFS_DELEG_EVERYONE 135 
#define  ZFS_DELEG_EVERYONE_SETS 134 
#define  ZFS_DELEG_GROUP 133 
#define  ZFS_DELEG_GROUP_SETS 132 
#define  ZFS_DELEG_NAMED_SET 131 
#define  ZFS_DELEG_NAMED_SET_SETS 130 
#define  ZFS_DELEG_USER 129 
#define  ZFS_DELEG_USER_SETS 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 struct group* FUNC2 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,char) ; 
 TYPE_2__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_3__*,int,char const*) ; 

__attribute__((used)) static inline int
FUNC14(fs_perm_t *fsperm, nvlist_t *nvl)
{
	nvpair_t *nvp = NULL;
	fs_perm_set_t *fspset = fsperm->fsp_set;

	while ((nvp = FUNC4(nvl, nvp)) != NULL) {
		nvlist_t *nvl2 = NULL;
		const char *name = FUNC5(nvp);
		uu_avl_t *avl = NULL;
		uu_avl_pool_t *avl_pool = NULL;
		zfs_deleg_who_type_t perm_type = name[0];
		char perm_locality = name[1];
		const char *perm_name = name + 3;
		boolean_t is_set = B_TRUE;
		who_perm_t *who_perm = NULL;

		FUNC0('$' == name[2]);

		if (FUNC6(nvp, &nvl2) != 0)
			return (-1);

		switch (perm_type) {
		case ZFS_DELEG_CREATE:
		case ZFS_DELEG_CREATE_SETS:
		case ZFS_DELEG_NAMED_SET:
		case ZFS_DELEG_NAMED_SET_SETS:
			avl_pool = fspset->fsps_named_set_avl_pool;
			avl = fsperm->fsp_sc_avl;
			break;
		case ZFS_DELEG_USER:
		case ZFS_DELEG_USER_SETS:
		case ZFS_DELEG_GROUP:
		case ZFS_DELEG_GROUP_SETS:
		case ZFS_DELEG_EVERYONE:
		case ZFS_DELEG_EVERYONE_SETS:
			avl_pool = fspset->fsps_who_perm_avl_pool;
			avl = fsperm->fsp_uge_avl;
			break;

		default:
			FUNC0(!"unhandled zfs_deleg_who_type_t");
		}

		if (is_set) {
			who_perm_node_t *found_node = NULL;
			who_perm_node_t *node = FUNC8(
			    sizeof (who_perm_node_t));
			who_perm = &node->who_perm;
			uu_avl_index_t idx = 0;

			FUNC12(node, &node->who_avl_node, avl_pool);
			FUNC13(who_perm, fsperm, perm_type, perm_name);

			if ((found_node = FUNC10(avl, node, NULL, &idx))
			    == NULL) {
				if (avl == fsperm->fsp_uge_avl) {
					uid_t rid = 0;
					struct passwd *p = NULL;
					struct group *g = NULL;
					const char *nice_name = NULL;

					switch (perm_type) {
					case ZFS_DELEG_USER_SETS:
					case ZFS_DELEG_USER:
						rid = FUNC1(perm_name);
						p = FUNC3(rid);
						if (p)
							nice_name = p->pw_name;
						break;
					case ZFS_DELEG_GROUP_SETS:
					case ZFS_DELEG_GROUP:
						rid = FUNC1(perm_name);
						g = FUNC2(rid);
						if (g)
							nice_name = g->gr_name;
						break;

					default:
						break;
					}

					if (nice_name != NULL)
						(void) FUNC9(
						    node->who_perm.who_ug_name,
						    nice_name, 256);
				}

				FUNC11(avl, node, idx);
			} else {
				node = found_node;
				who_perm = &node->who_perm;
			}
		}

		(void) FUNC7(who_perm, nvl2, perm_locality);
	}

	return (0);
}