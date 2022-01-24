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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct perf_tool {int ordered_samples; scalar_t__ ordering_requires_timestamps; } ;
struct TYPE_2__ {int /*<<< orphan*/  to_free; int /*<<< orphan*/  sample_cache; int /*<<< orphan*/  samples; } ;
struct perf_session {int mmap_window; int repipe; int /*<<< orphan*/  evlist; int /*<<< orphan*/  hists; int /*<<< orphan*/  host_machine; TYPE_1__ ordered_samples; int /*<<< orphan*/  machines; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_KERNEL_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int ULLONG_MAX ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC9 (struct perf_session*) ; 
 scalar_t__ FUNC10 (struct perf_session*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct perf_session*) ; 
 size_t FUNC12 (char const*) ; 
 struct perf_session* FUNC13 (int) ; 

struct perf_session *FUNC14(const char *filename, int mode,
				       bool force, bool repipe,
				       struct perf_tool *tool)
{
	struct perf_session *self;
	struct stat st;
	size_t len;

	if (!filename || !FUNC12(filename)) {
		if (!FUNC3(STDIN_FILENO, &st) && FUNC1(st.st_mode))
			filename = "-";
		else
			filename = "perf.data";
	}

	len = FUNC12(filename);
	self = FUNC13(sizeof(*self) + len);

	if (self == NULL)
		goto out;

	FUNC6(self->filename, filename, len);
	/*
	 * On 64bit we can mmap the data file in one go. No need for tiny mmap
	 * slices. On 32bit we use 32MB.
	 */
#if BITS_PER_LONG == 64
	self->mmap_window = ULLONG_MAX;
#else
	self->mmap_window = 32 * 1024 * 1024ULL;
#endif
	self->machines = RB_ROOT;
	self->repipe = repipe;
	FUNC0(&self->ordered_samples.samples);
	FUNC0(&self->ordered_samples.sample_cache);
	FUNC0(&self->ordered_samples.to_free);
	FUNC5(&self->host_machine, "", HOST_KERNEL_ID);
	FUNC4(&self->hists);

	if (mode == O_RDONLY) {
		if (FUNC10(self, force) < 0)
			goto out_delete;
		FUNC11(self);
	} else if (mode == O_WRONLY) {
		/*
		 * In O_RDONLY mode this will be performed when reading the
		 * kernel MMAP event, in perf_event__process_mmap().
		 */
		if (FUNC8(self) < 0)
			goto out_delete;
	}

	if (tool && tool->ordering_requires_timestamps &&
	    tool->ordered_samples && !FUNC7(self->evlist)) {
		FUNC2("WARNING: No sample_id_all support, falling back to unordered processing\n");
		tool->ordered_samples = false;
	}

out:
	return self;
out_delete:
	FUNC9(self);
	return NULL;
}