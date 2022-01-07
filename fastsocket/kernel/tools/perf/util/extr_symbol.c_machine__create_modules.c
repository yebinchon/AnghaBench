
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct map {int dso; } ;
struct machine {char* root_dir; } ;
typedef int name ;
struct TYPE_2__ {char* default_guest_modules; } ;
typedef int FILE ;


 int PATH_MAX ;
 int dso__kernel_module_get_build_id (int ,char*) ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int hex2u64 (char*,int *) ;
 scalar_t__ machine__is_default_guest (struct machine*) ;
 struct map* machine__new_module (struct machine*,int ,char*) ;
 int machine__set_modules_path (struct machine*) ;
 int snprintf (char*,int,char*,char*) ;
 int sprintf (char*,char*,char*) ;
 char* strchr (char*,char) ;
 char* strrchr (char*,char) ;
 scalar_t__ symbol__restricted_filename (char*,char*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int machine__create_modules(struct machine *machine)
{
 char *line = ((void*)0);
 size_t n;
 FILE *file;
 struct map *map;
 const char *modules;
 char path[PATH_MAX];

 if (machine__is_default_guest(machine))
  modules = symbol_conf.default_guest_modules;
 else {
  sprintf(path, "%s/proc/modules", machine->root_dir);
  modules = path;
 }

 if (symbol__restricted_filename(path, "/proc/modules"))
  return -1;

 file = fopen(modules, "r");
 if (file == ((void*)0))
  return -1;

 while (!feof(file)) {
  char name[PATH_MAX];
  u64 start;
  char *sep;
  int line_len;

  line_len = getline(&line, &n, file);
  if (line_len < 0)
   break;

  if (!line)
   goto out_failure;

  line[--line_len] = '\0';

  sep = strrchr(line, 'x');
  if (sep == ((void*)0))
   continue;

  hex2u64(sep + 1, &start);

  sep = strchr(line, ' ');
  if (sep == ((void*)0))
   continue;

  *sep = '\0';

  snprintf(name, sizeof(name), "[%s]", line);
  map = machine__new_module(machine, start, name);
  if (map == ((void*)0))
   goto out_delete_line;
  dso__kernel_module_get_build_id(map->dso, machine->root_dir);
 }

 free(line);
 fclose(file);

 return machine__set_modules_path(machine);

out_delete_line:
 free(line);
out_failure:
 return -1;
}
