
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int number_dollar_extra_args; int number_other; } ;
typedef TYPE_1__ format_check_results ;


 int OPT_Wformat ;
 int dollar_arguments_count ;
 scalar_t__* dollar_arguments_pointer_p ;
 int * dollar_arguments_used ;
 scalar_t__ dollar_first_arg_num ;
 int dollar_max_arg_used ;
 int warning (int ,char*,int,int) ;

__attribute__((used)) static void
finish_dollar_format_checking (format_check_results *res, int pointer_gap_ok)
{
  int i;
  bool found_pointer_gap = 0;
  for (i = 0; i < dollar_max_arg_used; i++)
    {
      if (!dollar_arguments_used[i])
 {
   if (pointer_gap_ok && (dollar_first_arg_num == 0
     || dollar_arguments_pointer_p[i]))
     found_pointer_gap = 1;
   else
     warning (OPT_Wformat,
       "format argument %d unused before used argument %d in $-style format",
       i + 1, dollar_max_arg_used);
 }
    }
  if (found_pointer_gap
      || (dollar_first_arg_num
   && dollar_max_arg_used < dollar_arguments_count))
    {
      res->number_other--;
      res->number_dollar_extra_args++;
    }
}
