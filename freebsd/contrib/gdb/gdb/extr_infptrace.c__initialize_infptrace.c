
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_info (char*,int ,char*) ;
 int udot_info ;

void
_initialize_infptrace (void)
{

  add_info ("udot", udot_info,
     "Print contents of kernel ``struct user'' for current child.");

}
