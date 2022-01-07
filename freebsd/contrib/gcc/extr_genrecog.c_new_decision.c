
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decision_head {struct decision* last; struct decision* first; } ;
struct decision {scalar_t__ number; int position; struct decision_head success; } ;


 int next_number ;
 struct decision* xcalloc (int,int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static struct decision *
new_decision (const char *position, struct decision_head *last)
{
  struct decision *new = xcalloc (1, sizeof (struct decision));

  new->success = *last;
  new->position = xstrdup (position);
  new->number = next_number++;

  last->first = last->last = new;
  return new;
}
