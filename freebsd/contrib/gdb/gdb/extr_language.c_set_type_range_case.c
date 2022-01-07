
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int la_case_sensitivity; int la_type_check; int la_range_check; } ;


 scalar_t__ case_mode ;
 scalar_t__ case_mode_auto ;
 int case_sensitivity ;
 TYPE_1__* current_language ;
 int range_check ;
 scalar_t__ range_mode ;
 scalar_t__ range_mode_auto ;
 int set_case_str () ;
 int set_range_str () ;
 int set_type_str () ;
 int type_check ;
 scalar_t__ type_mode ;
 scalar_t__ type_mode_auto ;

__attribute__((used)) static void
set_type_range_case (void)
{

  if (range_mode == range_mode_auto)
    range_check = current_language->la_range_check;

  if (type_mode == type_mode_auto)
    type_check = current_language->la_type_check;

  if (case_mode == case_mode_auto)
    case_sensitivity = current_language->la_case_sensitivity;

  set_type_str ();
  set_range_str ();
  set_case_str ();
}
