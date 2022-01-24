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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct map {int /*<<< orphan*/  type; int /*<<< orphan*/  unmap_ip; int /*<<< orphan*/  map_ip; } ;
struct list_head {int dummy; } ;
struct dso {int dummy; } ;
typedef  int /*<<< orphan*/  newfilename ;
typedef  enum map_type { ____Placeholder_map_type } map_type ;

/* Variables and functions */
 int PATH_MAX ; 
 struct dso* FUNC0 (struct list_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dso*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct map*) ; 
 int /*<<< orphan*/  identity__map_ip ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 struct map* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct map*,int,scalar_t__,scalar_t__,scalar_t__,struct dso*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 
 struct dso* FUNC9 (struct list_head*) ; 

struct map *FUNC10(struct list_head *dsos__list, u64 start, u64 len,
		     u64 pgoff, u32 pid, char *filename,
		     enum map_type type)
{
	struct map *self = FUNC6(sizeof(*self));

	if (self != NULL) {
		char newfilename[PATH_MAX];
		struct dso *dso;
		int anon, no_dso, vdso;

		anon = FUNC3(filename);
		vdso = FUNC5(filename);
		no_dso = FUNC4(filename);

		if (anon) {
			FUNC8(newfilename, sizeof(newfilename), "/tmp/perf-%d.map", pid);
			filename = newfilename;
		}

		if (vdso) {
			pgoff = 0;
			dso = FUNC9(dsos__list);
		} else
			dso = FUNC0(dsos__list, filename);

		if (dso == NULL)
			goto out_delete;

		FUNC7(self, type, start, start + len, pgoff, dso);

		if (anon || no_dso) {
			self->map_ip = self->unmap_ip = identity__map_ip;

			/*
			 * Set memory without DSO as loaded. All map__find_*
			 * functions still return NULL, and we avoid the
			 * unnecessary map__load warning.
			 */
			if (no_dso)
				FUNC1(dso, self->type);
		}
	}
	return self;
out_delete:
	FUNC2(self);
	return NULL;
}