
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef int DIR ;


 scalar_t__ DT_DIR ;
 scalar_t__ DT_LNK ;
 int PATH_MAX ;
 char* PATH_SYS_NODE ;
 int closedir (int *) ;
 unsigned int* cpunode_map ;
 scalar_t__ init_cpunode_map () ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int sscanf (char*,char*,unsigned int*) ;

__attribute__((used)) static int setup_cpunode_map(void)
{
 struct dirent *dent1, *dent2;
 DIR *dir1, *dir2;
 unsigned int cpu, mem;
 char buf[PATH_MAX];

 if (init_cpunode_map())
  return -1;

 dir1 = opendir(PATH_SYS_NODE);
 if (!dir1)
  return 0;

 while ((dent1 = readdir(dir1)) != ((void*)0)) {
  if (dent1->d_type != DT_DIR ||
      sscanf(dent1->d_name, "node%u", &mem) < 1)
   continue;

  snprintf(buf, PATH_MAX, "%s/%s", PATH_SYS_NODE, dent1->d_name);
  dir2 = opendir(buf);
  if (!dir2)
   continue;
  while ((dent2 = readdir(dir2)) != ((void*)0)) {
   if (dent2->d_type != DT_LNK ||
       sscanf(dent2->d_name, "cpu%u", &cpu) < 1)
    continue;
   cpunode_map[cpu] = mem;
  }
  closedir(dir2);
 }
 closedir(dir1);
 return 0;
}
