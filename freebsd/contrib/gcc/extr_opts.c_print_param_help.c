
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* help; char* option; } ;


 size_t LAST_PARAM ;
 char* _ (char const*) ;
 TYPE_1__* compiler_params ;
 int putchar (char) ;
 int puts (char*) ;
 int strlen (char const*) ;
 char* undocumented_msg ;
 int wrap_help (char const*,char const*,int ) ;

__attribute__((used)) static void
print_param_help (void)
{
  size_t i;

  puts (_("The --param option recognizes the following as parameters:\n"));

  for (i = 0; i < LAST_PARAM; i++)
    {
      const char *help = compiler_params[i].help;
      const char *param = compiler_params[i].option;

      if (help == ((void*)0) || *help == '\0')
 help = undocumented_msg;


      help = _(help);

      wrap_help (help, param, strlen (param));
    }

  putchar ('\n');
}
