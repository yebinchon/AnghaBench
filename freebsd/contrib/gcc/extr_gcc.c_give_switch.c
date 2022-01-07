
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ live_cond; char* part1; char** args; int validated; } ;


 int IS_DIR_SEPARATOR (char const) ;
 scalar_t__ SWITCH_IGNORE ;
 int do_spec_1 (char const*,int,int *) ;
 unsigned int strlen (char const*) ;
 char* suffix_subst ;
 TYPE_1__* switches ;

__attribute__((used)) static void
give_switch (int switchnum, int omit_first_word)
{
  if (switches[switchnum].live_cond == SWITCH_IGNORE)
    return;

  if (!omit_first_word)
    {
      do_spec_1 ("-", 0, ((void*)0));
      do_spec_1 (switches[switchnum].part1, 1, ((void*)0));
    }

  if (switches[switchnum].args != 0)
    {
      const char **p;
      for (p = switches[switchnum].args; *p; p++)
 {
   const char *arg = *p;

   do_spec_1 (" ", 0, ((void*)0));
   if (suffix_subst)
     {
       unsigned length = strlen (arg);
       int dot = 0;

       while (length-- && !IS_DIR_SEPARATOR (arg[length]))
  if (arg[length] == '.')
    {
      ((char *)arg)[length] = 0;
      dot = 1;
      break;
    }
       do_spec_1 (arg, 1, ((void*)0));
       if (dot)
  ((char *)arg)[length] = '.';
       do_spec_1 (suffix_subst, 1, ((void*)0));
     }
   else
     do_spec_1 (arg, 1, ((void*)0));
 }
    }

  do_spec_1 (" ", 0, ((void*)0));
  switches[switchnum].validated = 1;
}
