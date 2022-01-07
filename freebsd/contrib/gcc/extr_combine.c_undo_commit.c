
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct undo {struct undo* next; } ;
struct TYPE_2__ {struct undo* undos; struct undo* frees; } ;


 TYPE_1__ undobuf ;

__attribute__((used)) static void
undo_commit (void)
{
  struct undo *undo, *next;

  for (undo = undobuf.undos; undo; undo = next)
    {
      next = undo->next;
      undo->next = undobuf.frees;
      undobuf.frees = undo;
    }
  undobuf.undos = 0;
}
