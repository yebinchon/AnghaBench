
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* command_line_input (char*,int ,char*) ;
 int error (char*,...) ;
 int error_no_arg (char*) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 char* getenv (char*) ;
 scalar_t__ isspace (char) ;
 int printf_unfiltered (char*,char const*) ;
 int strtol (char*,char**,int) ;

int
get_selections (int *choices, int n_choices, int max_results,
  int is_all_choice, char *annotation_suffix)
{
  int i;
  char *args;
  const char *prompt;
  int n_chosen;
  int first_choice = is_all_choice ? 2 : 1;

  prompt = getenv ("PS2");
  if (prompt == ((void*)0))
    prompt = ">";

  printf_unfiltered ("%s ", prompt);
  gdb_flush (gdb_stdout);

  args = command_line_input ((char *) ((void*)0), 0, annotation_suffix);

  if (args == ((void*)0))
    error_no_arg ("one or more choice numbers");

  n_chosen = 0;



  while (1)
    {
      char *args2;
      int choice, j;

      while (isspace (*args))
 args += 1;
      if (*args == '\0' && n_chosen == 0)
 error_no_arg ("one or more choice numbers");
      else if (*args == '\0')
 break;

      choice = strtol (args, &args2, 10);
      if (args == args2 || choice < 0
   || choice > n_choices + first_choice - 1)
 error ("Argument must be choice number");
      args = args2;

      if (choice == 0)
 error ("cancelled");

      if (choice < first_choice)
 {
   n_chosen = n_choices;
   for (j = 0; j < n_choices; j += 1)
     choices[j] = j;
   break;
 }
      choice -= first_choice;

      for (j = n_chosen - 1; j >= 0 && choice < choices[j]; j -= 1)
 {
 }

      if (j < 0 || choice != choices[j])
 {
   int k;
   for (k = n_chosen - 1; k > j; k -= 1)
     choices[k + 1] = choices[k];
   choices[j + 1] = choice;
   n_chosen += 1;
 }
    }

  if (n_chosen > max_results)
    error ("Select no more than %d of the above", max_results);

  return n_chosen;
}
