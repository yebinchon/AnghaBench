
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_region {int enabled_p; struct mem_region* next; } ;


 int atoi (char*) ;
 int dcache_invalidate (int ) ;
 int error (char*) ;
 int mem_enable (int) ;
 struct mem_region* mem_region_chain ;
 int target_dcache ;

__attribute__((used)) static void
mem_enable_command (char *args, int from_tty)
{
  char *p = args;
  char *p1;
  int num;
  struct mem_region *m;

  dcache_invalidate (target_dcache);

  if (p == 0)
    {
      for (m = mem_region_chain; m; m = m->next)
 m->enabled_p = 1;
    }
  else
    while (*p)
      {
 p1 = p;
 while (*p1 >= '0' && *p1 <= '9')
   p1++;
 if (*p1 && *p1 != ' ' && *p1 != '\t')
   error ("Arguments must be memory region numbers.");

 num = atoi (p);
 mem_enable (num);

 p = p1;
 while (*p == ' ' || *p == '\t')
   p++;
      }
}
