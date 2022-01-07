
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEPRECATED_STREQ (int ,char*) ;
 int case_mode ;
 int case_mode_auto ;
 int case_mode_manual ;
 int case_sensitive ;
 int case_sensitive_off ;
 int case_sensitive_on ;
 int case_sensitivity ;
 int set_case_str () ;
 int set_type_range_case () ;
 int show_case_command (char*,int) ;
 int warning (char*,int ) ;

__attribute__((used)) static void
set_case_command (char *ignore, int from_tty)
{
   if (DEPRECATED_STREQ (case_sensitive, "on"))
   {
      case_sensitivity = case_sensitive_on;
      case_mode = case_mode_manual;
   }
   else if (DEPRECATED_STREQ (case_sensitive, "off"))
   {
      case_sensitivity = case_sensitive_off;
      case_mode = case_mode_manual;
   }
   else if (DEPRECATED_STREQ (case_sensitive, "auto"))
   {
      case_mode = case_mode_auto;
      set_type_range_case ();


      return;
   }
   else
   {
      warning ("Unrecognized case-sensitive setting: \"%s\"", case_sensitive);
   }
   set_case_str();
   show_case_command ((char *) ((void*)0), from_tty);
}
