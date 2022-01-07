
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct change {scalar_t__ line0; scalar_t__ deleted; scalar_t__ line1; scalar_t__ inserted; scalar_t__ ignore; struct change* link; } ;
typedef scalar_t__ lin ;


 int LIN_MAX ;
 int abort () ;
 int context ;

__attribute__((used)) static struct change *
find_hunk (struct change *start)
{
  struct change *prev;
  lin top0, top1;
  lin thresh;




  lin non_ignorable_threshold =
    (LIN_MAX - 1) / 2 < context ? LIN_MAX : 2 * context + 1;
  lin ignorable_threshold = context;

  do
    {

      top0 = start->line0 + start->deleted;
      top1 = start->line1 + start->inserted;
      prev = start;
      start = start->link;
      thresh = (prev->ignore || (start && start->ignore)
  ? ignorable_threshold
  : non_ignorable_threshold);


      if (start && start->line0 - top0 != start->line1 - top1)
 abort ();
    } while (start


      && start->line0 - top0 < thresh);

  return prev;
}
