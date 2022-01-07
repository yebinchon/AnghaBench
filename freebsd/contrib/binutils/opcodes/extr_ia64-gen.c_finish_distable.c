
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disent {int ournum; int nextcnt; struct disent* next_ent; } ;


 struct disent* disinsntable ;

__attribute__((used)) static void
finish_distable ()
{
  struct disent *ent = disinsntable;
  struct disent *prev = ent;

  ent->ournum = 32768;
  while ((ent = ent->next_ent) != ((void*)0))
    {
      ent->ournum = prev->ournum + prev->nextcnt + 1;
      prev = ent;
    }
}
