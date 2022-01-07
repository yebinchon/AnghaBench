
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_type_range_case () ;
 int set_type_str () ;
 int show_type_command (char*,int) ;
 scalar_t__ strcmp (int ,char*) ;
 int type ;
 int type_check ;
 int type_check_off ;
 int type_check_on ;
 int type_check_warn ;
 int type_mode ;
 int type_mode_auto ;
 int type_mode_manual ;
 int warning (char*,int ) ;

__attribute__((used)) static void
set_type_command (char *ignore, int from_tty)
{
  if (strcmp (type, "on") == 0)
    {
      type_check = type_check_on;
      type_mode = type_mode_manual;
    }
  else if (strcmp (type, "warn") == 0)
    {
      type_check = type_check_warn;
      type_mode = type_mode_manual;
    }
  else if (strcmp (type, "off") == 0)
    {
      type_check = type_check_off;
      type_mode = type_mode_manual;
    }
  else if (strcmp (type, "auto") == 0)
    {
      type_mode = type_mode_auto;
      set_type_range_case ();


      return;
    }
  else
    {
      warning ("Unrecognized type check setting: \"%s\"", type);
    }
  set_type_str ();
  show_type_command ((char *) ((void*)0), from_tty);
}
