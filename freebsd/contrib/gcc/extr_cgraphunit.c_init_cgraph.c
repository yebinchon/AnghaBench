
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TDI_cgraph ;
 int cgraph_dump_file ;
 int dump_begin (int ,int *) ;

void
init_cgraph (void)
{
  cgraph_dump_file = dump_begin (TDI_cgraph, ((void*)0));
}
