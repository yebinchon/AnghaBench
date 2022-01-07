
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sort_by_name; int try_vmlinux_path; int * vmlinux_name; } ;


 int HOST_KERNEL_ID ;
 int machine ;
 scalar_t__ machine__create_kernel_maps (int *) ;
 int machine__init (int *,char*,int ) ;
 int pr_debug (char*,...) ;
 int pr_warning (char*) ;
 int symbol__init () ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int init_vmlinux(void)
{
 int ret;

 symbol_conf.sort_by_name = 1;
 if (symbol_conf.vmlinux_name == ((void*)0))
  symbol_conf.try_vmlinux_path = 1;
 else
  pr_debug("Use vmlinux: %s\n", symbol_conf.vmlinux_name);
 ret = symbol__init();
 if (ret < 0) {
  pr_debug("Failed to init symbol map.\n");
  goto out;
 }

 ret = machine__init(&machine, "", HOST_KERNEL_ID);
 if (ret < 0)
  goto out;

 if (machine__create_kernel_maps(&machine) < 0) {
  pr_debug("machine__create_kernel_maps() failed.\n");
  goto out;
 }
out:
 if (ret < 0)
  pr_warning("Failed to init vmlinux path.\n");
 return ret;
}
