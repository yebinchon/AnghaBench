#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  int zpool_prop_t ;
struct TYPE_10__ {int /*<<< orphan*/ * zpool_props; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_11__ {int /*<<< orphan*/  vs_aux; } ;
typedef  TYPE_2__ vdev_stat_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  int uint64_t ;
typedef  int u_longlong_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 scalar_t__ POOL_STATE_UNAVAIL ; 
#define  PROP_TYPE_INDEX 148 
#define  PROP_TYPE_NUMBER 147 
#define  PROP_TYPE_STRING 146 
 int SPA_VERSION_FEATURES ; 
 int UINT64_MAX ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
#define  ZPOOL_PROP_ALLOCATED 145 
#define  ZPOOL_PROP_ALTROOT 144 
#define  ZPOOL_PROP_BOOTSIZE 143 
#define  ZPOOL_PROP_CACHEFILE 142 
#define  ZPOOL_PROP_CAPACITY 141 
#define  ZPOOL_PROP_CHECKPOINT 140 
#define  ZPOOL_PROP_COMMENT 139 
#define  ZPOOL_PROP_DEDUPRATIO 138 
#define  ZPOOL_PROP_EXPANDSZ 137 
#define  ZPOOL_PROP_FRAGMENTATION 136 
#define  ZPOOL_PROP_FREE 135 
#define  ZPOOL_PROP_FREEING 134 
#define  ZPOOL_PROP_GUID 133 
#define  ZPOOL_PROP_HEALTH 132 
#define  ZPOOL_PROP_LEAKED 131 
#define  ZPOOL_PROP_NAME 130 
#define  ZPOOL_PROP_SIZE 129 
#define  ZPOOL_PROP_VERSION 128 
 int /*<<< orphan*/  ZPROP_SRC_NONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,size_t) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char const* FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 char const* FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 char const* FUNC13 (scalar_t__) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int,char const**) ; 
 char const* FUNC16 (int,int /*<<< orphan*/ ) ; 

int
FUNC17(zpool_handle_t *zhp, zpool_prop_t prop, char *buf, size_t len,
    zprop_source_t *srctype, boolean_t literal)
{
	uint64_t intval;
	const char *strval;
	zprop_source_t src = ZPROP_SRC_NONE;
	nvlist_t *nvroot;
	vdev_stat_t *vs;
	uint_t vsc;

	if (FUNC12(zhp) == POOL_STATE_UNAVAIL) {
		switch (prop) {
		case ZPOOL_PROP_NAME:
			(void) FUNC4(buf, FUNC9(zhp), len);
			break;

		case ZPOOL_PROP_HEALTH:
			(void) FUNC4(buf,
			    FUNC13(POOL_STATE_UNAVAIL), len);
			break;

		case ZPOOL_PROP_GUID:
			intval = FUNC10(zhp, prop, &src);
			(void) FUNC3(buf, len, "%llu", intval);
			break;

		case ZPOOL_PROP_ALTROOT:
		case ZPOOL_PROP_CACHEFILE:
		case ZPOOL_PROP_COMMENT:
			if (zhp->zpool_props != NULL ||
			    FUNC7(zhp) == 0) {
				(void) FUNC4(buf,
				    FUNC11(zhp, prop, &src),
				    len);
				break;
			}
			/* FALLTHROUGH */
		default:
			(void) FUNC4(buf, "-", len);
			break;
		}

		if (srctype != NULL)
			*srctype = src;
		return (0);
	}

	if (zhp->zpool_props == NULL && FUNC7(zhp) &&
	    prop != ZPOOL_PROP_NAME)
		return (-1);

	switch (FUNC14(prop)) {
	case PROP_TYPE_STRING:
		(void) FUNC4(buf, FUNC11(zhp, prop, &src),
		    len);
		break;

	case PROP_TYPE_NUMBER:
		intval = FUNC10(zhp, prop, &src);

		switch (prop) {
		case ZPOOL_PROP_SIZE:
		case ZPOOL_PROP_ALLOCATED:
		case ZPOOL_PROP_FREE:
		case ZPOOL_PROP_FREEING:
		case ZPOOL_PROP_LEAKED:
			if (literal) {
				(void) FUNC3(buf, len, "%llu",
				    (u_longlong_t)intval);
			} else {
				(void) FUNC6(intval, buf, len);
			}
			break;
		case ZPOOL_PROP_BOOTSIZE:
		case ZPOOL_PROP_EXPANDSZ:
		case ZPOOL_PROP_CHECKPOINT:
			if (intval == 0) {
				(void) FUNC4(buf, "-", len);
			} else if (literal) {
				(void) FUNC3(buf, len, "%llu",
				    (u_longlong_t)intval);
			} else {
				(void) FUNC6(intval, buf, len);
			}
			break;
		case ZPOOL_PROP_CAPACITY:
			if (literal) {
				(void) FUNC3(buf, len, "%llu",
				    (u_longlong_t)intval);
			} else {
				(void) FUNC3(buf, len, "%llu%%",
				    (u_longlong_t)intval);
			}
			break;
		case ZPOOL_PROP_FRAGMENTATION:
			if (intval == UINT64_MAX) {
				(void) FUNC4(buf, "-", len);
			} else {
				(void) FUNC3(buf, len, "%llu%%",
				    (u_longlong_t)intval);
			}
			break;
		case ZPOOL_PROP_DEDUPRATIO:
			(void) FUNC3(buf, len, "%llu.%02llux",
			    (u_longlong_t)(intval / 100),
			    (u_longlong_t)(intval % 100));
			break;
		case ZPOOL_PROP_HEALTH:
			FUNC5(FUNC1(FUNC8(zhp, NULL),
			    ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0);
			FUNC5(FUNC2(nvroot,
			    ZPOOL_CONFIG_VDEV_STATS, (uint64_t **)&vs, &vsc)
			    == 0);

			(void) FUNC4(buf, FUNC16(intval,
			    vs->vs_aux), len);
			break;
		case ZPOOL_PROP_VERSION:
			if (intval >= SPA_VERSION_FEATURES) {
				(void) FUNC3(buf, len, "-");
				break;
			}
			/* FALLTHROUGH */
		default:
			(void) FUNC3(buf, len, "%llu", intval);
		}
		break;

	case PROP_TYPE_INDEX:
		intval = FUNC10(zhp, prop, &src);
		if (FUNC15(prop, intval, &strval)
		    != 0)
			return (-1);
		(void) FUNC4(buf, strval, len);
		break;

	default:
		FUNC0();
	}

	if (srctype)
		*srctype = src;

	return (0);
}