
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proc_net; } ;


 int DMESG (char*) ;
 int RTL8180_MODULE_NAME ;
 int S_IFDIR ;
 int create_proc_entry (int ,int ,int ) ;
 TYPE_1__ init_net ;
 int rtl8180_proc ;

void rtl8180_proc_module_init(void)
{
 DMESG("Initializing proc filesystem");
        rtl8180_proc=create_proc_entry(RTL8180_MODULE_NAME, S_IFDIR, init_net.proc_net);
}
