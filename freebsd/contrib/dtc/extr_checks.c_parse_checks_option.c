
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct check {int name; } ;


 int ARRAY_SIZE (struct check**) ;
 struct check** check_table ;
 int die (char*,char const*) ;
 int disable_warning_error (struct check*,int,int) ;
 int enable_warning_error (struct check*,int,int) ;
 scalar_t__ streq (int ,char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

void parse_checks_option(bool warn, bool error, const char *arg)
{
 int i;
 const char *name = arg;
 bool enable = 1;

 if ((strncmp(arg, "no-", 3) == 0)
     || (strncmp(arg, "no_", 3) == 0)) {
  name = arg + 3;
  enable = 0;
 }

 for (i = 0; i < ARRAY_SIZE(check_table); i++) {
  struct check *c = check_table[i];

  if (streq(c->name, name)) {
   if (enable)
    enable_warning_error(c, warn, error);
   else
    disable_warning_error(c, warn, error);
   return;
  }
 }

 die("Unrecognized check name \"%s\"\n", name);
}
