
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_stuff {int * ktypevec; int * btypevec; } ;


 int forget_B_and_K_types (struct work_stuff*) ;
 int free (char*) ;

__attribute__((used)) static void
squangle_mop_up (struct work_stuff *work)
{

  forget_B_and_K_types (work);
  if (work -> btypevec != ((void*)0))
    {
      free ((char *) work -> btypevec);
    }
  if (work -> ktypevec != ((void*)0))
    {
      free ((char *) work -> ktypevec);
    }
}
