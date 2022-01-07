
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
typedef int CORE_ADDR ;


 int call_function_by_hand (struct value*,int,struct value**) ;
 int complaint (int *,char*) ;
 struct value* find_function_in_inferior (char*) ;
 scalar_t__ lookup_minimal_symbol (char*,int ,int ) ;
 scalar_t__ strlen (char*) ;
 int symfile_complaints ;
 int target_has_execution ;
 int value_as_long (int ) ;
 struct value* value_coerce_array (int ) ;
 int value_string (char*,scalar_t__) ;

CORE_ADDR
lookup_child_selector (char *selname)
{
  struct value * function, *selstring;

  if (! target_has_execution)
    {

      return 0;
    }

  if (lookup_minimal_symbol("sel_getUid", 0, 0))
    function = find_function_in_inferior("sel_getUid");
  else if (lookup_minimal_symbol ("sel_get_any_uid", 0, 0))
    function = find_function_in_inferior("sel_get_any_uid");
  else
    {
      complaint (&symfile_complaints, "no way to lookup Objective-C selectors");
      return 0;
    }

  selstring = value_coerce_array (value_string (selname,
      strlen (selname) + 1));
  return value_as_long (call_function_by_hand (function, 1, &selstring));
}
