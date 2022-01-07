
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resmap {int dummy; } ;


 int kfree (struct resmap*) ;

__attribute__((used)) static void cleanup_resmap(struct resmap *res_map)
{
 kfree(res_map);
}
