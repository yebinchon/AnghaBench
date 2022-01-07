
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct perf_tool {int ordered_samples; scalar_t__ ordering_requires_timestamps; } ;
struct TYPE_2__ {int to_free; int sample_cache; int samples; } ;
struct perf_session {int mmap_window; int repipe; int evlist; int hists; int host_machine; TYPE_1__ ordered_samples; int machines; int filename; } ;


 int HOST_KERNEL_ID ;
 int INIT_LIST_HEAD (int *) ;
 int O_RDONLY ;
 int O_WRONLY ;
 int RB_ROOT ;
 int STDIN_FILENO ;
 scalar_t__ S_ISFIFO (int ) ;
 int ULLONG_MAX ;
 int dump_printf (char*) ;
 int fstat (int ,struct stat*) ;
 int hists__init (int *) ;
 int machine__init (int *,char*,int ) ;
 int memcpy (int ,char const*,size_t) ;
 int perf_evlist__sample_id_all (int ) ;
 scalar_t__ perf_session__create_kernel_maps (struct perf_session*) ;
 int perf_session__delete (struct perf_session*) ;
 scalar_t__ perf_session__open (struct perf_session*,int) ;
 int perf_session__set_id_hdr_size (struct perf_session*) ;
 size_t strlen (char const*) ;
 struct perf_session* zalloc (int) ;

struct perf_session *perf_session__new(const char *filename, int mode,
           bool force, bool repipe,
           struct perf_tool *tool)
{
 struct perf_session *self;
 struct stat st;
 size_t len;

 if (!filename || !strlen(filename)) {
  if (!fstat(STDIN_FILENO, &st) && S_ISFIFO(st.st_mode))
   filename = "-";
  else
   filename = "perf.data";
 }

 len = strlen(filename);
 self = zalloc(sizeof(*self) + len);

 if (self == ((void*)0))
  goto out;

 memcpy(self->filename, filename, len);







 self->mmap_window = 32 * 1024 * 1024ULL;

 self->machines = RB_ROOT;
 self->repipe = repipe;
 INIT_LIST_HEAD(&self->ordered_samples.samples);
 INIT_LIST_HEAD(&self->ordered_samples.sample_cache);
 INIT_LIST_HEAD(&self->ordered_samples.to_free);
 machine__init(&self->host_machine, "", HOST_KERNEL_ID);
 hists__init(&self->hists);

 if (mode == O_RDONLY) {
  if (perf_session__open(self, force) < 0)
   goto out_delete;
  perf_session__set_id_hdr_size(self);
 } else if (mode == O_WRONLY) {




  if (perf_session__create_kernel_maps(self) < 0)
   goto out_delete;
 }

 if (tool && tool->ordering_requires_timestamps &&
     tool->ordered_samples && !perf_evlist__sample_id_all(self->evlist)) {
  dump_printf("WARNING: No sample_id_all support, falling back to unordered processing\n");
  tool->ordered_samples = 0;
 }

out:
 return self;
out_delete:
 perf_session__delete(self);
 return ((void*)0);
}
