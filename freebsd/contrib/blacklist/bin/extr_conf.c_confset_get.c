
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct confset {size_t cs_n; struct conf* cs_c; } ;
struct conf {int dummy; } ;



__attribute__((used)) static struct conf *
confset_get(struct confset *cs)
{
 return &cs->cs_c[cs->cs_n];
}
