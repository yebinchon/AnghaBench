
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_root {int dummy; } ;
struct dirent {char* d_name; } ;
typedef scalar_t__ pid_t ;
struct TYPE_2__ {char* guestmount; scalar_t__ default_guest_kallsyms; scalar_t__ default_guest_modules; scalar_t__ default_guest_vmlinux_name; } ;


 scalar_t__ DEFAULT_GUEST_KERNEL_ID ;
 int ENOENT ;
 scalar_t__ ERANGE ;
 int PATH_MAX ;
 int R_OK ;
 int access (char*,int ) ;
 scalar_t__ errno ;
 int free (struct dirent**) ;
 int isdigit (char) ;
 int machines__create_kernel_maps (struct rb_root*,scalar_t__) ;
 int pr_debug (char*,char*) ;
 int scandir (char*,struct dirent***,int *,int *) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ strtol (char*,char**,int) ;
 TYPE_1__ symbol_conf ;

int machines__create_guest_kernel_maps(struct rb_root *machines)
{
 int ret = 0;
 struct dirent **namelist = ((void*)0);
 int i, items = 0;
 char path[PATH_MAX];
 pid_t pid;
 char *endp;

 if (symbol_conf.default_guest_vmlinux_name ||
     symbol_conf.default_guest_modules ||
     symbol_conf.default_guest_kallsyms) {
  machines__create_kernel_maps(machines, DEFAULT_GUEST_KERNEL_ID);
 }

 if (symbol_conf.guestmount) {
  items = scandir(symbol_conf.guestmount, &namelist, ((void*)0), ((void*)0));
  if (items <= 0)
   return -ENOENT;
  for (i = 0; i < items; i++) {
   if (!isdigit(namelist[i]->d_name[0])) {

    continue;
   }
   pid = (pid_t)strtol(namelist[i]->d_name, &endp, 10);
   if ((*endp != '\0') ||
       (endp == namelist[i]->d_name) ||
       (errno == ERANGE)) {
    pr_debug("invalid directory (%s). Skipping.\n",
      namelist[i]->d_name);
    continue;
   }
   sprintf(path, "%s/%s/proc/kallsyms",
    symbol_conf.guestmount,
    namelist[i]->d_name);
   ret = access(path, R_OK);
   if (ret) {
    pr_debug("Can't access file %s\n", path);
    goto failure;
   }
   machines__create_kernel_maps(machines, pid);
  }
failure:
  free(namelist);
 }

 return ret;
}
