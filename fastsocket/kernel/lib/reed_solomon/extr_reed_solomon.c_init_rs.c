
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs_control {int dummy; } ;


 struct rs_control* init_rs_internal (int,int,int *,int,int,int) ;

struct rs_control *init_rs(int symsize, int gfpoly, int fcr, int prim,
                           int nroots)
{
 return init_rs_internal(symsize, gfpoly, ((void*)0), fcr, prim, nroots);
}
