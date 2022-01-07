
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct perf_tool {int dummy; } ;
struct machine {int dummy; } ;
struct dso {int long_name; scalar_t__ kernel; } ;


 int PERF_RECORD_MISC_KERNEL ;
 int PERF_RECORD_MISC_USER ;
 scalar_t__ dso__read_build_id (struct dso*) ;
 int perf_event__repipe ;
 int perf_event__synthesize_build_id (struct perf_tool*,struct dso*,int ,int ,struct machine*) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int dso__inject_build_id(struct dso *self, struct perf_tool *tool,
    struct machine *machine)
{
 u16 misc = PERF_RECORD_MISC_USER;
 int err;

 if (dso__read_build_id(self) < 0) {
  pr_debug("no build_id found for %s\n", self->long_name);
  return -1;
 }

 if (self->kernel)
  misc = PERF_RECORD_MISC_KERNEL;

 err = perf_event__synthesize_build_id(tool, self, misc, perf_event__repipe,
           machine);
 if (err) {
  pr_err("Can't synthesize build_id event for %s\n", self->long_name);
  return -1;
 }

 return 0;
}
