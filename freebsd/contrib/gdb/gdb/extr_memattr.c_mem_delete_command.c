
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int dcache_invalidate (int ) ;
 int dont_repeat () ;
 int error (char*) ;
 int mem_clear () ;
 int mem_delete (int) ;
 scalar_t__ query (char*) ;
 int target_dcache ;

__attribute__((used)) static void
mem_delete_command (char *args, int from_tty)
{
  char *p = args;
  char *p1;
  int num;

  dcache_invalidate (target_dcache);

  if (p == 0)
    {
      if (query ("Delete all memory regions? "))
 mem_clear ();
      dont_repeat ();
      return;
    }

  while (*p)
    {
      p1 = p;
      while (*p1 >= '0' && *p1 <= '9')
 p1++;
      if (*p1 && *p1 != ' ' && *p1 != '\t')
 error ("Arguments must be memory region numbers.");

      num = atoi (p);
      mem_delete (num);

      p = p1;
      while (*p == ' ' || *p == '\t')
 p++;
    }

  dont_repeat ();
}
