
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL_TERMINAL ;
 int * el ;
 int el_set (int *,int ,char const*) ;
 scalar_t__ rootshell ;

void
setterm(const char *term)
{
 if (rootshell && el != ((void*)0) && term != ((void*)0))
  el_set(el, EL_TERMINAL, term);
}
