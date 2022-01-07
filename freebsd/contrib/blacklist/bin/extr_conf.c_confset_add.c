
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct confset {int cs_n; } ;



__attribute__((used)) static void
confset_add(struct confset *cs)
{
 cs->cs_n++;
}
