
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proc_net; } ;


 int COMP_INIT ;
 int RTL819xE_MODULE_NAME ;
 int RT_TRACE (int ,char*) ;
 int S_IFDIR ;
 int create_proc_entry (int ,int ,int ) ;
 TYPE_1__ init_net ;
 int rtl8192_proc ;

__attribute__((used)) static void rtl8192_proc_module_init(void)
{
 RT_TRACE(COMP_INIT, "Initializing proc filesystem");
 rtl8192_proc=create_proc_entry(RTL819xE_MODULE_NAME, S_IFDIR, init_net.proc_net);
}
