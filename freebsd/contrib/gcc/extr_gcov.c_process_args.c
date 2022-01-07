
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flag_all_blocks ;
 int flag_branches ;
 int flag_counts ;
 int flag_function_summary ;
 int flag_gcov_file ;
 int flag_long_names ;
 int flag_preserve_paths ;
 int flag_unconditional ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int object_directory ;
 int optarg ;
 int optind ;
 int options ;
 int print_usage (int) ;
 int print_version () ;

__attribute__((used)) static int
process_args (int argc, char **argv)
{
  int opt;

  while ((opt = getopt_long (argc, argv, "abcfhlno:puv", options, ((void*)0))) != -1)
    {
      switch (opt)
 {
 case 'a':
   flag_all_blocks = 1;
   break;
 case 'b':
   flag_branches = 1;
   break;
 case 'c':
   flag_counts = 1;
   break;
 case 'f':
   flag_function_summary = 1;
   break;
 case 'h':
   print_usage (0);

 case 'l':
   flag_long_names = 1;
   break;
 case 'n':
   flag_gcov_file = 0;
   break;
 case 'o':
   object_directory = optarg;
   break;
 case 'p':
   flag_preserve_paths = 1;
   break;
 case 'u':
   flag_unconditional = 1;
   break;
 case 'v':
   print_version ();

 default:
   print_usage (1);

 }
    }

  return optind;
}
