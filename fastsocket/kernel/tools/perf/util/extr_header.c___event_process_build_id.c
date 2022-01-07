
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct perf_session {int dummy; } ;
struct list_head {int dummy; } ;
struct machine {struct list_head user_dsos; struct list_head kernel_dsos; } ;
struct dso {int kernel; int long_name; int build_id; } ;
struct TYPE_2__ {int misc; } ;
struct build_id_event {int build_id; TYPE_1__ header; int pid; } ;
typedef enum dso_kernel_type { ____Placeholder_dso_kernel_type } dso_kernel_type ;


 int BUILD_ID_SIZE ;
 int DSO_TYPE_GUEST_KERNEL ;
 int DSO_TYPE_KERNEL ;
 int DSO_TYPE_USER ;
 int PERF_RECORD_MISC_CPUMODE_MASK ;




 struct dso* __dsos__findnew (struct list_head*,char*) ;
 int build_id__sprintf (int ,int,char*) ;
 int dso__set_build_id (struct dso*,int *) ;
 struct machine* perf_session__findnew_machine (struct perf_session*,int ) ;
 int pr_debug (char*,int ,char*) ;

__attribute__((used)) static int __event_process_build_id(struct build_id_event *bev,
        char *filename,
        struct perf_session *session)
{
 int err = -1;
 struct list_head *head;
 struct machine *machine;
 u16 misc;
 struct dso *dso;
 enum dso_kernel_type dso_type;

 machine = perf_session__findnew_machine(session, bev->pid);
 if (!machine)
  goto out;

 misc = bev->header.misc & PERF_RECORD_MISC_CPUMODE_MASK;

 switch (misc) {
 case 129:
  dso_type = DSO_TYPE_KERNEL;
  head = &machine->kernel_dsos;
  break;
 case 131:
  dso_type = DSO_TYPE_GUEST_KERNEL;
  head = &machine->kernel_dsos;
  break;
 case 128:
 case 130:
  dso_type = DSO_TYPE_USER;
  head = &machine->user_dsos;
  break;
 default:
  goto out;
 }

 dso = __dsos__findnew(head, filename);
 if (dso != ((void*)0)) {
  char sbuild_id[BUILD_ID_SIZE * 2 + 1];

  dso__set_build_id(dso, &bev->build_id);

  if (filename[0] == '[')
   dso->kernel = dso_type;

  build_id__sprintf(dso->build_id, sizeof(dso->build_id),
      sbuild_id);
  pr_debug("build id event received for %s: %s\n",
    dso->long_name, sbuild_id);
 }

 err = 0;
out:
 return err;
}
