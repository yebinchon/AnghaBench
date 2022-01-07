
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int m; int i; int r; } ;
struct TYPE_4__ {int * r; int * i; } ;
struct undo {int kind; struct undo* next; TYPE_2__ old_contents; TYPE_1__ where; } ;
struct TYPE_6__ {struct undo* undos; struct undo* frees; } ;


 int PUT_MODE (int ,int ) ;



 int gcc_unreachable () ;
 TYPE_3__ undobuf ;

__attribute__((used)) static void
undo_all (void)
{
  struct undo *undo, *next;

  for (undo = undobuf.undos; undo; undo = next)
    {
      next = undo->next;
      switch (undo->kind)
 {
 case 128:
   *undo->where.r = undo->old_contents.r;
   break;
 case 130:
   *undo->where.i = undo->old_contents.i;
   break;
 case 129:
   PUT_MODE (*undo->where.r, undo->old_contents.m);
   break;
 default:
   gcc_unreachable ();
 }

      undo->next = undobuf.frees;
      undobuf.frees = undo;
    }

  undobuf.undos = 0;
}
