
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_candidate {struct z_candidate* next; } ;


 int joust (struct z_candidate*,struct z_candidate*,int ) ;

__attribute__((used)) static struct z_candidate *
tourney (struct z_candidate *candidates)
{
  struct z_candidate *champ = candidates, *challenger;
  int fate;
  int champ_compared_to_predecessor = 0;




  for (challenger = champ->next; challenger; )
    {
      fate = joust (champ, challenger, 0);
      if (fate == 1)
 challenger = challenger->next;
      else
 {
   if (fate == 0)
     {
       champ = challenger->next;
       if (champ == 0)
  return ((void*)0);
       champ_compared_to_predecessor = 0;
     }
   else
     {
       champ = challenger;
       champ_compared_to_predecessor = 1;
     }

   challenger = champ->next;
 }
    }




  for (challenger = candidates;
       challenger != champ
  && !(champ_compared_to_predecessor && challenger->next == champ);
       challenger = challenger->next)
    {
      fate = joust (champ, challenger, 0);
      if (fate != 1)
 return ((void*)0);
    }

  return champ;
}
