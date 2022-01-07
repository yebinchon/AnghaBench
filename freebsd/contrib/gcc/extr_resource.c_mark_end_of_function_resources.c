
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int end_of_function_needs ;
 int mark_referenced_resources (int ,int *,int) ;

void
mark_end_of_function_resources (rtx trial, int include_delayed_effects)
{
  mark_referenced_resources (trial, &end_of_function_needs,
        include_delayed_effects);
}
