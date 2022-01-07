
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cplus_markers ;
 int * strchr (int ,int) ;

int
is_cplus_marker (int c)
{
  return c && strchr (cplus_markers, c) != ((void*)0);
}
