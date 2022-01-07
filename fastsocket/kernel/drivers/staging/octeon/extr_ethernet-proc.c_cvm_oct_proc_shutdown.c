
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int remove_proc_entry (char*,int *) ;

void cvm_oct_proc_shutdown(void)
{
 remove_proc_entry("octeon_ethernet_stats", ((void*)0));
}
