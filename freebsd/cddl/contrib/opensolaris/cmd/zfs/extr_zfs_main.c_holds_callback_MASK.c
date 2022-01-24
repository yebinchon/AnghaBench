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
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_2__ {size_t cb_max_namelen; size_t cb_max_taglen; int /*<<< orphan*/ * cb_snapname; scalar_t__ cb_recursive; int /*<<< orphan*/ ** cb_nvlp; } ;
typedef  TYPE_1__ holds_cbdata_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,char) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 size_t FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(zfs_handle_t *zhp, void *data)
{
	holds_cbdata_t *cbp = data;
	nvlist_t *top_nvl = *cbp->cb_nvlp;
	nvlist_t *nvl = NULL;
	nvpair_t *nvp = NULL;
	const char *zname = FUNC7(zhp);
	size_t znamelen = FUNC5(zname);

	if (cbp->cb_recursive && cbp->cb_snapname != NULL) {
		const char *snapname;
		char *delim  = FUNC3(zname, '@');
		if (delim == NULL)
			return (0);

		snapname = delim + 1;
		if (FUNC4(cbp->cb_snapname, snapname))
			return (0);
	}

	if (FUNC6(zhp, &nvl) != 0)
		return (-1);

	if (znamelen > cbp->cb_max_namelen)
		cbp->cb_max_namelen  = znamelen;

	while ((nvp = FUNC1(nvl, nvp)) != NULL) {
		const char *tag = FUNC2(nvp);
		size_t taglen = FUNC5(tag);
		if (taglen > cbp->cb_max_taglen)
			cbp->cb_max_taglen  = taglen;
	}

	return (FUNC0(top_nvl, zname, nvl));
}