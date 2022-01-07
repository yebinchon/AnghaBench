
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_stuff {int ntypes; int ** typevec; } ;


 int free (int *) ;

__attribute__((used)) static void
forget_types (struct work_stuff *work)
{
  int i;

  while (work -> ntypes > 0)
    {
      i = --(work -> ntypes);
      if (work -> typevec[i] != ((void*)0))
 {
   free (work -> typevec[i]);
   work -> typevec[i] = ((void*)0);
 }
    }
}
