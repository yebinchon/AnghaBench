
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_region {int dummy; } ;


 int xfree (struct mem_region*) ;

__attribute__((used)) static void
delete_mem_region (struct mem_region *m)
{
  xfree (m);
}
