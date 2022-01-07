
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct confset {scalar_t__ cs_m; scalar_t__ cs_n; int * cs_c; } ;



__attribute__((used)) static void
confset_init(struct confset *cs)
{
 cs->cs_c = ((void*)0);
 cs->cs_n = 0;
 cs->cs_m = 0;
}
