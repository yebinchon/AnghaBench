#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint_t ;
typedef  unsigned long long uint64_t ;
struct stat64 {scalar_t__ st_size; } ;
struct TYPE_5__ {char* zprl_type; int zprl_children; unsigned long long zprl_parity; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ replication_level_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int boolean_t ;

/* Variables and functions */
 unsigned long long B_FALSE ; 
 int B_TRUE ; 
 scalar_t__ MAXOFFSET_T ; 
 int /*<<< orphan*/  O_RDONLY ; 
 char* VDEV_TYPE_RAIDZ ; 
 char* VDEV_TYPE_REPLACING ; 
 char* VDEV_TYPE_SPARE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_IS_LOG ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_NPARITY ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PATH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TYPE ; 
 scalar_t__ ZPOOL_FUZZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int,struct stat64*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (unsigned long long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long*) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int) ; 
 int FUNC11 (char*,struct stat64*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static replication_level_t *
FUNC15(nvlist_t *nvroot, boolean_t fatal)
{
	nvlist_t **top;
	uint_t t, toplevels;
	nvlist_t **child;
	uint_t c, children;
	nvlist_t *nv;
	char *type;
	replication_level_t lastrep = {0};
	replication_level_t rep;
	replication_level_t *ret;
	boolean_t dontreport;

	ret = FUNC10(sizeof (replication_level_t));

	FUNC14(FUNC6(nvroot, ZPOOL_CONFIG_CHILDREN,
	    &top, &toplevels) == 0);

	for (t = 0; t < toplevels; t++) {
		uint64_t is_log = B_FALSE;

		nv = top[t];

		/*
		 * For separate logs we ignore the top level vdev replication
		 * constraints.
		 */
		(void) FUNC8(nv, ZPOOL_CONFIG_IS_LOG, &is_log);
		if (is_log)
			continue;

		FUNC14(FUNC7(nv, ZPOOL_CONFIG_TYPE,
		    &type) == 0);
		if (FUNC6(nv, ZPOOL_CONFIG_CHILDREN,
		    &child, &children) != 0) {
			/*
			 * This is a 'file' or 'disk' vdev.
			 */
			rep.zprl_type = type;
			rep.zprl_children = 1;
			rep.zprl_parity = 0;
		} else {
			uint64_t vdev_size;

			/*
			 * This is a mirror or RAID-Z vdev.  Go through and make
			 * sure the contents are all the same (files vs. disks),
			 * keeping track of the number of elements in the
			 * process.
			 *
			 * We also check that the size of each vdev (if it can
			 * be determined) is the same.
			 */
			rep.zprl_type = type;
			rep.zprl_children = 0;

			if (FUNC12(type, VDEV_TYPE_RAIDZ) == 0) {
				FUNC14(FUNC8(nv,
				    ZPOOL_CONFIG_NPARITY,
				    &rep.zprl_parity) == 0);
				FUNC0(rep.zprl_parity != 0);
			} else {
				rep.zprl_parity = 0;
			}

			/*
			 * The 'dontreport' variable indicates that we've
			 * already reported an error for this spec, so don't
			 * bother doing it again.
			 */
			type = NULL;
			dontreport = 0;
			vdev_size = -1ULL;
			for (c = 0; c < children; c++) {
				boolean_t is_replacing, is_spare;
				nvlist_t *cnv = child[c];
				char *path;
				struct stat64 statbuf;
				uint64_t size = -1ULL;
				char *childtype;
				int fd, err;

				rep.zprl_children++;

				FUNC14(FUNC7(cnv,
				    ZPOOL_CONFIG_TYPE, &childtype) == 0);

				/*
				 * If this is a replacing or spare vdev, then
				 * get the real first child of the vdev.
				 */
				is_replacing = FUNC12(childtype,
				    VDEV_TYPE_REPLACING) == 0;
				is_spare = FUNC12(childtype,
				    VDEV_TYPE_SPARE) == 0;
				if (is_replacing || is_spare) {
					nvlist_t **rchild;
					uint_t rchildren;

					FUNC14(FUNC6(cnv,
					    ZPOOL_CONFIG_CHILDREN, &rchild,
					    &rchildren) == 0);
					FUNC0((is_replacing && rchildren == 2)
					    || (is_spare && rchildren >= 2));
					cnv = rchild[0];

					FUNC14(FUNC7(cnv,
					    ZPOOL_CONFIG_TYPE,
					    &childtype) == 0);
					if (FUNC12(childtype,
					    VDEV_TYPE_SPARE) == 0) {
						/* We have a replacing vdev with
						 * a spare child.  Get the first
						 * real child of the spare
						 */
						FUNC14(
						    FUNC6(
							cnv,
							ZPOOL_CONFIG_CHILDREN,
							&rchild,
						    &rchildren) == 0);
						FUNC0(rchildren >= 2);
						cnv = rchild[0];
					}
				}

				FUNC14(FUNC7(cnv,
				    ZPOOL_CONFIG_PATH, &path) == 0);

				/*
				 * If we have a raidz/mirror that combines disks
				 * with files, report it as an error.
				 */
				if (!dontreport && type != NULL &&
				    FUNC12(type, childtype) != 0) {
					if (ret != NULL)
						FUNC2(ret);
					ret = NULL;
					if (fatal)
						FUNC13(FUNC4(
						    "mismatched replication "
						    "level: %s contains both "
						    "files and devices\n"),
						    rep.zprl_type);
					else
						return (NULL);
					dontreport = B_TRUE;
				}

				/*
				 * According to stat(2), the value of 'st_size'
				 * is undefined for block devices and character
				 * devices.  But there is no effective way to
				 * determine the real size in userland.
				 *
				 * Instead, we'll take advantage of an
				 * implementation detail of spec_size().  If the
				 * device is currently open, then we (should)
				 * return a valid size.
				 *
				 * If we still don't get a valid size (indicated
				 * by a size of 0 or MAXOFFSET_T), then ignore
				 * this device altogether.
				 */
				if ((fd = FUNC9(path, O_RDONLY)) >= 0) {
					err = FUNC3(fd, &statbuf);
					(void) FUNC1(fd);
				} else {
					err = FUNC11(path, &statbuf);
				}

				if (err != 0 ||
				    statbuf.st_size == 0 ||
				    statbuf.st_size == MAXOFFSET_T)
					continue;

				size = statbuf.st_size;

				/*
				 * Also make sure that devices and
				 * slices have a consistent size.  If
				 * they differ by a significant amount
				 * (~16MB) then report an error.
				 */
				if (!dontreport &&
				    (vdev_size != -1ULL &&
				    (FUNC5(size - vdev_size) >
				    ZPOOL_FUZZ))) {
					if (ret != NULL)
						FUNC2(ret);
					ret = NULL;
					if (fatal)
						FUNC13(FUNC4(
						    "%s contains devices of "
						    "different sizes\n"),
						    rep.zprl_type);
					else
						return (NULL);
					dontreport = B_TRUE;
				}

				type = childtype;
				vdev_size = size;
			}
		}

		/*
		 * At this point, we have the replication of the last toplevel
		 * vdev in 'rep'.  Compare it to 'lastrep' to see if its
		 * different.
		 */
		if (lastrep.zprl_type != NULL) {
			if (FUNC12(lastrep.zprl_type, rep.zprl_type) != 0) {
				if (ret != NULL)
					FUNC2(ret);
				ret = NULL;
				if (fatal)
					FUNC13(FUNC4(
					    "mismatched replication level: "
					    "both %s and %s vdevs are "
					    "present\n"),
					    lastrep.zprl_type, rep.zprl_type);
				else
					return (NULL);
			} else if (lastrep.zprl_parity != rep.zprl_parity) {
				if (ret)
					FUNC2(ret);
				ret = NULL;
				if (fatal)
					FUNC13(FUNC4(
					    "mismatched replication level: "
					    "both %llu and %llu device parity "
					    "%s vdevs are present\n"),
					    lastrep.zprl_parity,
					    rep.zprl_parity,
					    rep.zprl_type);
				else
					return (NULL);
			} else if (lastrep.zprl_children != rep.zprl_children) {
				if (ret)
					FUNC2(ret);
				ret = NULL;
				if (fatal)
					FUNC13(FUNC4(
					    "mismatched replication level: "
					    "both %llu-way and %llu-way %s "
					    "vdevs are present\n"),
					    lastrep.zprl_children,
					    rep.zprl_children,
					    rep.zprl_type);
				else
					return (NULL);
			}
		}
		lastrep = rep;
	}

	if (ret != NULL)
		*ret = rep;

	return (ret);
}