
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct utsname {char* release; } ;
typedef int bf ;
struct TYPE_2__ {scalar_t__* symfs; } ;


 int PATH_MAX ;
 int ** malloc (int) ;
 int snprintf (char*,int,char*,char*) ;
 int * strdup (char*) ;
 TYPE_1__ symbol_conf ;
 scalar_t__ uname (struct utsname*) ;
 int ** vmlinux_path ;
 int vmlinux_path__exit () ;
 size_t vmlinux_path__nr_entries ;

__attribute__((used)) static int vmlinux_path__init(void)
{
 struct utsname uts;
 char bf[PATH_MAX];

 vmlinux_path = malloc(sizeof(char *) * 5);
 if (vmlinux_path == ((void*)0))
  return -1;

 vmlinux_path[vmlinux_path__nr_entries] = strdup("vmlinux");
 if (vmlinux_path[vmlinux_path__nr_entries] == ((void*)0))
  goto out_fail;
 ++vmlinux_path__nr_entries;
 vmlinux_path[vmlinux_path__nr_entries] = strdup("/boot/vmlinux");
 if (vmlinux_path[vmlinux_path__nr_entries] == ((void*)0))
  goto out_fail;
 ++vmlinux_path__nr_entries;


 if (symbol_conf.symfs[0] != 0)
  return 0;

 if (uname(&uts) < 0)
  return -1;

 snprintf(bf, sizeof(bf), "/boot/vmlinux-%s", uts.release);
 vmlinux_path[vmlinux_path__nr_entries] = strdup(bf);
 if (vmlinux_path[vmlinux_path__nr_entries] == ((void*)0))
  goto out_fail;
 ++vmlinux_path__nr_entries;
 snprintf(bf, sizeof(bf), "/lib/modules/%s/build/vmlinux", uts.release);
 vmlinux_path[vmlinux_path__nr_entries] = strdup(bf);
 if (vmlinux_path[vmlinux_path__nr_entries] == ((void*)0))
  goto out_fail;
 ++vmlinux_path__nr_entries;
 snprintf(bf, sizeof(bf), "/usr/lib/debug/lib/modules/%s/vmlinux",
   uts.release);
 vmlinux_path[vmlinux_path__nr_entries] = strdup(bf);
 if (vmlinux_path[vmlinux_path__nr_entries] == ((void*)0))
  goto out_fail;
 ++vmlinux_path__nr_entries;

 return 0;

out_fail:
 vmlinux_path__exit();
 return -1;
}
