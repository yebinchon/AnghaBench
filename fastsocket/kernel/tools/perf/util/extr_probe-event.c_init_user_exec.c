
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int try_vmlinux_path; int sort_by_name; } ;


 int pr_debug (char*) ;
 int symbol__init () ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int init_user_exec(void)
{
 int ret = 0;

 symbol_conf.try_vmlinux_path = 0;
 symbol_conf.sort_by_name = 1;
 ret = symbol__init();

 if (ret < 0)
  pr_debug("Failed to init symbol map.\n");

 return ret;
}
