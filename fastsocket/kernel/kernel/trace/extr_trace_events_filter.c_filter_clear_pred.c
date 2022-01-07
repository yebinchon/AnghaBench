
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct filter_pred {TYPE_1__ regex; int * field_name; } ;


 int kfree (int *) ;

__attribute__((used)) static void filter_clear_pred(struct filter_pred *pred)
{
 kfree(pred->field_name);
 pred->field_name = ((void*)0);
 pred->regex.len = 0;
}
