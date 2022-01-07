
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct cpu_map {int dummy; } ;
typedef int FILE ;


 int PATH_MAX ;
 struct cpu_map* cpu_map__read (int *) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* sysfs_find_mountpoint () ;

__attribute__((used)) static struct cpu_map *pmu_cpumask(char *name)
{
 struct stat st;
 char path[PATH_MAX];
 const char *sysfs;
 FILE *file;
 struct cpu_map *cpus;

 sysfs = sysfs_find_mountpoint();
 if (!sysfs)
  return ((void*)0);

 snprintf(path, PATH_MAX,
   "%s/bus/event_source/devices/%s/cpumask", sysfs, name);

 if (stat(path, &st) < 0)
  return ((void*)0);

 file = fopen(path, "r");
 if (!file)
  return ((void*)0);

 cpus = cpu_map__read(file);
 fclose(file);
 return cpus;
}
