
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int range ;
 int range_check ;
 int range_check_off ;
 int range_check_on ;
 int range_check_warn ;
 int range_mode ;
 int range_mode_auto ;
 int range_mode_manual ;
 int set_range_str () ;
 int set_type_range_case () ;
 int show_range_command (char*,int) ;
 scalar_t__ strcmp (int ,char*) ;
 int warning (char*,int ) ;

__attribute__((used)) static void
set_range_command (char *ignore, int from_tty)
{
  if (strcmp (range, "on") == 0)
    {
      range_check = range_check_on;
      range_mode = range_mode_manual;
    }
  else if (strcmp (range, "warn") == 0)
    {
      range_check = range_check_warn;
      range_mode = range_mode_manual;
    }
  else if (strcmp (range, "off") == 0)
    {
      range_check = range_check_off;
      range_mode = range_mode_manual;
    }
  else if (strcmp (range, "auto") == 0)
    {
      range_mode = range_mode_auto;
      set_type_range_case ();


      return;
    }
  else
    {
      warning ("Unrecognized range check setting: \"%s\"", range);
    }
  set_range_str ();
  show_range_command ((char *) 0, from_tty);
}
