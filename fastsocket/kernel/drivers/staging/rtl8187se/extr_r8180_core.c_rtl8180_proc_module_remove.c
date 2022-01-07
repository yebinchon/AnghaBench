
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proc_net; } ;


 int RTL8180_MODULE_NAME ;
 TYPE_1__ init_net ;
 int remove_proc_entry (int ,int ) ;

void rtl8180_proc_module_remove(void)
{
        remove_proc_entry(RTL8180_MODULE_NAME, init_net.proc_net);
}
