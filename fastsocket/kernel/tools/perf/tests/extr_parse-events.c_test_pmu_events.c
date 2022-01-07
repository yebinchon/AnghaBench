
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test__event_st {char* name; int check; } ;
struct stat {int dummy; } ;
struct dirent {char* d_name; } ;
typedef int DIR ;


 int MAX_NAME ;
 int PATH_MAX ;
 int closedir (int *) ;
 int * opendir (char*) ;
 int pr_debug (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char*) ;
 int stat (char*,struct stat*) ;
 int strcmp (char*,char*) ;
 char* sysfs_find_mountpoint () ;
 int test__checkevent_pmu_events ;
 int test_event (struct test__event_st*) ;

__attribute__((used)) static int test_pmu_events(void)
{
 struct stat st;
 char path[PATH_MAX];
 struct dirent *ent;
 DIR *dir;
 int ret;

 snprintf(path, PATH_MAX, "%s/bus/event_source/devices/cpu/events/",
   sysfs_find_mountpoint());

 ret = stat(path, &st);
 if (ret) {
  pr_debug("ommiting PMU cpu events tests\n");
  return 0;
 }

 dir = opendir(path);
 if (!dir) {
  pr_debug("can't open pmu event dir");
  return -1;
 }

 while (!ret && (ent = readdir(dir))) {

  struct test__event_st e;
  char name[100];

  if (!strcmp(ent->d_name, ".") ||
      !strcmp(ent->d_name, ".."))
   continue;

  snprintf(name, 100, "cpu/event=%s/u", ent->d_name);

  e.name = name;
  e.check = test__checkevent_pmu_events;

  ret = test_event(&e);

 }

 closedir(dir);
 return ret;
}
