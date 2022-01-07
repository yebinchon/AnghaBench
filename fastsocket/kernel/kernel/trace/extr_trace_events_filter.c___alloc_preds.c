
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_pred {int fn; } ;
struct event_filter {struct filter_pred** preds; scalar_t__ n_preds; } ;
typedef int pred ;


 int ENOMEM ;
 struct event_filter* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int MAX_FILTER_PRED ;
 int __free_preds (struct event_filter*) ;
 int filter_pred_none ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static struct event_filter *__alloc_preds(void)
{
 struct event_filter *filter;
 struct filter_pred *pred;
 int i;

 filter = kzalloc(sizeof(*filter), GFP_KERNEL);
 if (!filter)
  return ERR_PTR(-ENOMEM);

 filter->n_preds = 0;

 filter->preds = kzalloc(MAX_FILTER_PRED * sizeof(pred), GFP_KERNEL);
 if (!filter->preds)
  goto oom;

 for (i = 0; i < MAX_FILTER_PRED; i++) {
  pred = kzalloc(sizeof(*pred), GFP_KERNEL);
  if (!pred)
   goto oom;
  pred->fn = filter_pred_none;
  filter->preds[i] = pred;
 }

 return filter;

oom:
 __free_preds(filter);
 return ERR_PTR(-ENOMEM);
}
