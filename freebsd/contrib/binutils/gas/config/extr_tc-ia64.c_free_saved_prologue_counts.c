
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ label_prologue_count ;
struct TYPE_5__ {TYPE_1__* saved_prologue_counts; } ;


 int free (TYPE_1__*) ;
 TYPE_2__ unwind ;

__attribute__((used)) static void
free_saved_prologue_counts ()
{
  label_prologue_count *lpc = unwind.saved_prologue_counts;
  label_prologue_count *next;

  while (lpc != ((void*)0))
    {
      next = lpc->next;
      free (lpc);
      lpc = next;
    }

  unwind.saved_prologue_counts = ((void*)0);
}
