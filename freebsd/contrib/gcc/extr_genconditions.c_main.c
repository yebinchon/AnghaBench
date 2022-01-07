
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;







 int FATAL_EXIT_CODE ;
 int GET_CODE (int *) ;
 scalar_t__ SUCCESS_EXIT_CODE ;
 int XSTR (int *,int) ;
 int add_c_test (int ,int) ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 scalar_t__ init_md_reader_args (int,char**) ;
 char* progname ;
 int * read_md_rtx (int*,int*) ;
 int saw_eh_return ;
 int stdout ;
 int strcmp (int ,char*) ;
 int write_conditions () ;
 int write_header () ;
 int write_writer () ;

int
main (int argc, char **argv)
{
  rtx desc;
  int pattern_lineno;
  int code;

  progname = "genconditions";

  if (init_md_reader_args (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);


  while (1)
    {
      desc = read_md_rtx (&pattern_lineno, &code);
      if (desc == ((void*)0))
 break;



      switch (GET_CODE (desc))
 {
 default:
   break;

 case 131:
 case 132:
   add_c_test (XSTR (desc, 2), -1);


   if (!strcmp (XSTR (desc, 0), "eh_return"))
     saw_eh_return = 1;
   break;

 case 128:
 case 130:
 case 129:
   add_c_test (XSTR (desc, 1), -1);
   break;
 }
    }

  write_header ();
  write_conditions ();
  write_writer ();

  fflush (stdout);
  return (ferror (stdout) != 0 ? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE);
}
