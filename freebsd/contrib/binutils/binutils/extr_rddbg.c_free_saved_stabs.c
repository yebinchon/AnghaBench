
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * string; } ;


 int SAVE_STABS_COUNT ;
 int free (int *) ;
 TYPE_1__* saved_stabs ;
 scalar_t__ saved_stabs_index ;

__attribute__((used)) static void
free_saved_stabs (void)
{
  int i;

  for (i = 0; i < SAVE_STABS_COUNT; i++)
    {
      if (saved_stabs[i].string != ((void*)0))
 {
   free (saved_stabs[i].string);
   saved_stabs[i].string = ((void*)0);
 }
    }

  saved_stabs_index = 0;
}
