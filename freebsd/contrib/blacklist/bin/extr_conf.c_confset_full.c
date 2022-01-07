
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct confset {scalar_t__ cs_n; scalar_t__ cs_m; } ;



__attribute__((used)) static bool
confset_full(const struct confset *cs)
{
 return cs->cs_n == cs->cs_m;
}
