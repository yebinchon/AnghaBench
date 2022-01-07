
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_zone {int dummy; } ;


 int new_ggc_zone_1 (struct alloc_zone*,char const*) ;
 struct alloc_zone* xcalloc (int,int) ;

struct alloc_zone *
new_ggc_zone (const char * name)
{
  struct alloc_zone *new_zone = xcalloc (1, sizeof (struct alloc_zone));
  new_ggc_zone_1 (new_zone, name);
  return new_zone;
}
