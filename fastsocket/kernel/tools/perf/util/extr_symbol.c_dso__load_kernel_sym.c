
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int symbol_filter_t ;
struct map {int dummy; } ;
struct dso {int build_id; scalar_t__ has_build_id; } ;
typedef int kallsyms_build_id ;
struct TYPE_2__ {char* kallsyms_name; char* vmlinux_name; scalar_t__* symfs; } ;


 int BUILD_ID_SIZE ;
 int F_OK ;
 scalar_t__ access (char const*,int ) ;
 int asprintf (char**,char*,int ,char*) ;
 int build_id__sprintf (int ,int,char*) ;
 scalar_t__ dso__build_id_equal (struct dso*,int *) ;
 int dso__load_kallsyms (struct dso*,char const*,struct map*,int ) ;
 int dso__load_vmlinux (struct dso*,struct map*,char*,int ) ;
 int dso__load_vmlinux_path (struct dso*,struct map*,int ) ;
 int dso__set_long_name (struct dso*,int ) ;
 int free (char*) ;
 int getenv (char*) ;
 int map__fixup_end (struct map*) ;
 int map__fixup_start (struct map*) ;
 int pr_debug (char*,char const*) ;
 int pr_err (char*,...) ;
 int strdup (char*) ;
 TYPE_1__ symbol_conf ;
 scalar_t__ sysfs__read_build_id (char*,int *,int) ;
 int * vmlinux_path ;

__attribute__((used)) static int dso__load_kernel_sym(struct dso *dso, struct map *map,
    symbol_filter_t filter)
{
 int err;
 const char *kallsyms_filename = ((void*)0);
 char *kallsyms_allocated_filename = ((void*)0);
 if (symbol_conf.kallsyms_name != ((void*)0)) {
  kallsyms_filename = symbol_conf.kallsyms_name;
  goto do_kallsyms;
 }

 if (symbol_conf.vmlinux_name != ((void*)0)) {
  err = dso__load_vmlinux(dso, map,
     symbol_conf.vmlinux_name, filter);
  if (err > 0) {
   dso__set_long_name(dso,
        strdup(symbol_conf.vmlinux_name));
   goto out_fixup;
  }
  return err;
 }

 if (vmlinux_path != ((void*)0)) {
  err = dso__load_vmlinux_path(dso, map, filter);
  if (err > 0)
   goto out_fixup;
 }


 if (symbol_conf.symfs[0] != 0)
  return -1;






 if (dso->has_build_id) {
  u8 kallsyms_build_id[BUILD_ID_SIZE];
  char sbuild_id[BUILD_ID_SIZE * 2 + 1];

  if (sysfs__read_build_id("/sys/kernel/notes", kallsyms_build_id,
      sizeof(kallsyms_build_id)) == 0) {
   if (dso__build_id_equal(dso, kallsyms_build_id)) {
    kallsyms_filename = "/proc/kallsyms";
    goto do_kallsyms;
   }
  }




  build_id__sprintf(dso->build_id, sizeof(dso->build_id),
      sbuild_id);

  if (asprintf(&kallsyms_allocated_filename,
        "%s/.debug/[kernel.kallsyms]/%s",
        getenv("HOME"), sbuild_id) == -1) {
   pr_err("Not enough memory for kallsyms file lookup\n");
   return -1;
  }

  kallsyms_filename = kallsyms_allocated_filename;

  if (access(kallsyms_filename, F_OK)) {
   pr_err("No kallsyms or vmlinux with build-id %s "
          "was found\n", sbuild_id);
   free(kallsyms_allocated_filename);
   return -1;
  }
 } else {




  kallsyms_filename = "/proc/kallsyms";
 }

do_kallsyms:
 err = dso__load_kallsyms(dso, kallsyms_filename, map, filter);
 if (err > 0)
  pr_debug("Using %s for symbols\n", kallsyms_filename);
 free(kallsyms_allocated_filename);

 if (err > 0) {
  dso__set_long_name(dso, strdup("[kernel.kallsyms]"));
out_fixup:
  map__fixup_start(map);
  map__fixup_end(map);
 }

 return err;
}
