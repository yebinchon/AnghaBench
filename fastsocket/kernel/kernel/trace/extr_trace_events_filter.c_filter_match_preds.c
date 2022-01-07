
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_pred {int pop_n; int (* fn ) (struct filter_pred*,void*,int,int) ;} ;
struct event_filter {int n_preds; struct filter_pred** preds; } ;


 int MAX_FILTER_PRED ;
 int WARN_ON_ONCE (int) ;
 int stub1 (struct filter_pred*,void*,int,int) ;
 int stub2 (struct filter_pred*,void*,int,int) ;

int filter_match_preds(struct event_filter *filter, void *rec)
{
 int match, top = 0, val1 = 0, val2 = 0;
 int stack[MAX_FILTER_PRED];
 struct filter_pred *pred;
 int i;

 for (i = 0; i < filter->n_preds; i++) {
  pred = filter->preds[i];
  if (!pred->pop_n) {
   match = pred->fn(pred, rec, val1, val2);
   stack[top++] = match;
   continue;
  }
  if (pred->pop_n > top) {
   WARN_ON_ONCE(1);
   return 0;
  }
  val1 = stack[--top];
  val2 = stack[--top];
  match = pred->fn(pred, rec, val1, val2);
  stack[top++] = match;
 }

 return stack[--top];
}
