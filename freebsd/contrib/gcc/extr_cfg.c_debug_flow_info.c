
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TDF_DETAILS ;
 int dump_flow_info (int ,int ) ;
 int stderr ;

void
debug_flow_info (void)
{
  dump_flow_info (stderr, TDF_DETAILS);
}
