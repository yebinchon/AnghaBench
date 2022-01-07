
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* cplus_markers ;

void
set_cplus_marker_for_demangling (int ch)
{
  cplus_markers[0] = ch;
}
