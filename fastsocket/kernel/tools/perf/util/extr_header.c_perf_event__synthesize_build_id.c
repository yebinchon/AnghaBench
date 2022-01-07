
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int misc; int type; } ;
struct TYPE_4__ {int filename; TYPE_1__ header; int pid; int build_id; } ;
union perf_event {TYPE_2__ build_id; } ;
typedef int u16 ;
struct perf_tool {int dummy; } ;
struct machine {int pid; } ;
struct dso {int long_name_len; int long_name; int build_id; int hit; } ;
typedef int (* perf_event__handler_t ) (struct perf_tool*,union perf_event*,int *,struct machine*) ;
typedef int ev ;


 int NAME_ALIGN ;
 size_t PERF_ALIGN (size_t,int ) ;
 int PERF_RECORD_HEADER_BUILD_ID ;
 int memcpy (int *,int ,int) ;
 int memset (union perf_event*,int ,int) ;

int perf_event__synthesize_build_id(struct perf_tool *tool,
        struct dso *pos, u16 misc,
        perf_event__handler_t process,
        struct machine *machine)
{
 union perf_event ev;
 size_t len;
 int err = 0;

 if (!pos->hit)
  return err;

 memset(&ev, 0, sizeof(ev));

 len = pos->long_name_len + 1;
 len = PERF_ALIGN(len, NAME_ALIGN);
 memcpy(&ev.build_id.build_id, pos->build_id, sizeof(pos->build_id));
 ev.build_id.header.type = PERF_RECORD_HEADER_BUILD_ID;
 ev.build_id.header.misc = misc;
 ev.build_id.pid = machine->pid;
 ev.build_id.header.size = sizeof(ev.build_id) + len;
 memcpy(&ev.build_id.filename, pos->long_name, pos->long_name_len);

 err = process(tool, &ev, ((void*)0), machine);

 return err;
}
