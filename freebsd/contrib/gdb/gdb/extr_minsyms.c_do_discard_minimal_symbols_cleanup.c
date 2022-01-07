
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msym_bunch {struct msym_bunch* next; } ;


 struct msym_bunch* msym_bunch ;
 int xfree (struct msym_bunch*) ;

__attribute__((used)) static void
do_discard_minimal_symbols_cleanup (void *arg)
{
  struct msym_bunch *next;

  while (msym_bunch != ((void*)0))
    {
      next = msym_bunch->next;
      xfree (msym_bunch);
      msym_bunch = next;
    }
}
