
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ case_mode ;
 scalar_t__ case_mode_auto ;
 int case_sensitive ;


 int case_sensitivity ;
 int concat (char*,char*,int *) ;
 int error (char*) ;
 int xfree (int ) ;

__attribute__((used)) static void
set_case_str (void)
{
   char *tmp = ((void*)0), *prefix = "";

   if (case_mode==case_mode_auto)
      prefix = "auto; currently ";

   switch (case_sensitivity)
   {
   case 128:
     tmp = "on";
     break;
   case 129:
     tmp = "off";
     break;
   default:
     error ("Unrecognized case-sensitive setting.");
   }

   xfree (case_sensitive);
   case_sensitive = concat (prefix, tmp, ((void*)0));
}
