
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_stuff {int numk; int numb; int ** btypevec; int ** ktypevec; } ;


 int free (int *) ;

__attribute__((used)) static void
forget_B_and_K_types (struct work_stuff *work)
{
  int i;

  while (work -> numk > 0)
    {
      i = --(work -> numk);
      if (work -> ktypevec[i] != ((void*)0))
 {
   free (work -> ktypevec[i]);
   work -> ktypevec[i] = ((void*)0);
 }
    }

  while (work -> numb > 0)
    {
      i = --(work -> numb);
      if (work -> btypevec[i] != ((void*)0))
 {
   free (work -> btypevec[i]);
   work -> btypevec[i] = ((void*)0);
 }
    }
}
