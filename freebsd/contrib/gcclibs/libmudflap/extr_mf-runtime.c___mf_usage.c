
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* name; scalar_t__ value; scalar_t__* target; int type; char* description; } ;


 int abort () ;
 int fprintf (int ,char*,...) ;
 struct option* options ;
 scalar_t__ pthread_join ;


 int stderr ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void
__mf_usage ()
{
  struct option *opt;

  fprintf (stderr,
           "This is a %s%sGCC \"mudflap\" memory-checked binary.\n"
           "Mudflap is Copyright (C) 2002-2004 Free Software Foundation, Inc.\n"
           "\n"
           "The mudflap code can be controlled by an environment variable:\n"
           "\n"
           "$ export MUDFLAP_OPTIONS='<options>'\n"
           "$ <mudflapped_program>\n"
           "\n"
           "where <options> is a space-separated list of \n"
           "any of the following options.  Use `-no-OPTION' to disable options.\n"
           "\n",



           "",




           "thread-unaware "

            );


  for (opt = options; opt->name; opt++)
    {
      int default_p = (opt->value == * opt->target);

      switch (opt->type)
        {
          char buf[128];
        case 128:
          fprintf (stderr, "-%-23.23s %s", opt->name, opt->description);
          if (default_p)
            fprintf (stderr, " [active]\n");
          else
            fprintf (stderr, "\n");
          break;
        case 129:
          strncpy (buf, opt->name, 128);
          strncpy (buf + strlen (opt->name), "=N", 2);
          fprintf (stderr, "-%-23.23s %s", buf, opt->description);
          fprintf (stderr, " [%d]\n", * opt->target);
          break;
        default: abort();
        }
    }

  fprintf (stderr, "\n");
}
