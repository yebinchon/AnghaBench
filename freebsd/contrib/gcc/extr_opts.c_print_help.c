
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CL_COMMON ;
 int GET_ENVIRONMENT (char const*,char*) ;
 char* _ (char*) ;
 int atoi (char const*) ;
 int columns ;
 char** lang_names ;
 int print_filtered_help (unsigned int) ;
 int print_param_help () ;
 int print_target_help () ;
 int printf (char*,char*) ;
 int puts (char*) ;

__attribute__((used)) static void
print_help (void)
{
  size_t i;
  const char *p;

  GET_ENVIRONMENT (p, "COLUMNS");
  if (p)
    {
      int value = atoi (p);
      if (value > 0)
 columns = value;
    }

  puts (_("The following options are language-independent:\n"));

  print_filtered_help (CL_COMMON);
  print_param_help ();

  for (i = 0; lang_names[i]; i++)
    {
      printf (_("The %s front end recognizes the following options:\n\n"),
       lang_names[i]);
      print_filtered_help (1U << i);
    }
  print_target_help ();
}
