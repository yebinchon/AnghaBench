
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_pred {struct filter_pred* field_name; } ;


 int kfree (struct filter_pred*) ;

__attribute__((used)) static void filter_free_pred(struct filter_pred *pred)
{
 if (!pred)
  return;

 kfree(pred->field_name);
 kfree(pred);
}
