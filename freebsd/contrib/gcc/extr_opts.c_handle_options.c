
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_input_filename (char const*) ;
 int base_of_path (char const*,int *) ;
 int error (char*,char const*) ;
 unsigned int handle_option (char const**,unsigned int) ;
 int main_input_baselength ;
 int main_input_basename ;
 char const* main_input_filename ;

__attribute__((used)) static void
handle_options (unsigned int argc, const char **argv, unsigned int lang_mask)
{
  unsigned int n, i;

  for (i = 1; i < argc; i += n)
    {
      const char *opt = argv[i];


      if (opt[0] != '-' || opt[1] == '\0')
 {
   if (main_input_filename == ((void*)0))
     {
     main_input_filename = opt;
       main_input_baselength
  = base_of_path (main_input_filename, &main_input_basename);
     }
   add_input_filename (opt);
   n = 1;
   continue;
 }

      n = handle_option (argv + i, lang_mask);

      if (!n)
 {
   n = 1;
   error ("unrecognized command line option \"%s\"", opt);
 }
    }
}
