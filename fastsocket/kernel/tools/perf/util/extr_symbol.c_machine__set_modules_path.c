
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {char* root_dir; int kmaps; } ;
typedef int modules_path ;


 int PATH_MAX ;
 int free (char*) ;
 char* get_kernel_version (char*) ;
 int map_groups__set_modules_path_dir (int *,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static int machine__set_modules_path(struct machine *machine)
{
 char *version;
 char modules_path[PATH_MAX];

 version = get_kernel_version(machine->root_dir);
 if (!version)
  return -1;

 snprintf(modules_path, sizeof(modules_path), "%s/lib/modules/%s/kernel",
   machine->root_dir, version);
 free(version);

 return map_groups__set_modules_path_dir(&machine->kmaps, modules_path);
}
