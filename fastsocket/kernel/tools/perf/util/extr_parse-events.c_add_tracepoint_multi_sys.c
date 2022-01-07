
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 int add_tracepoint_event (struct list_head**,int*,int ,char*) ;
 int closedir (int *) ;
 int * opendir (int ) ;
 int perror (char*) ;
 struct dirent* readdir (int *) ;
 int strcmp (int ,char*) ;
 int strglobmatch (int ,char*) ;
 int tracing_events_path ;

__attribute__((used)) static int add_tracepoint_multi_sys(struct list_head **list, int *idx,
        char *sys_name, char *evt_name)
{
 struct dirent *events_ent;
 DIR *events_dir;
 int ret = 0;

 events_dir = opendir(tracing_events_path);
 if (!events_dir) {
  perror("Can't open event dir");
  return -1;
 }

 while (!ret && (events_ent = readdir(events_dir))) {
  if (!strcmp(events_ent->d_name, ".")
      || !strcmp(events_ent->d_name, "..")
      || !strcmp(events_ent->d_name, "enable")
      || !strcmp(events_ent->d_name, "header_event")
      || !strcmp(events_ent->d_name, "header_page"))
   continue;

  if (!strglobmatch(events_ent->d_name, sys_name))
   continue;

  ret = add_tracepoint_event(list, idx, events_ent->d_name,
        evt_name);
 }

 closedir(events_dir);
 return ret;
}
