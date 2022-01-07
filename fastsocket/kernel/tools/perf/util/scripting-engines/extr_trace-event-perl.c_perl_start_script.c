
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRSV ;
 scalar_t__ SvTRUE (int ) ;
 int free (char const**) ;
 char** malloc (int) ;
 int my_perl ;
 int perl_alloc () ;
 int perl_construct (int ) ;
 int perl_free (int ) ;
 scalar_t__ perl_parse (int ,int ,int,char**,char**) ;
 scalar_t__ perl_run (int ) ;
 int run_start_sub () ;
 int xs_init ;

__attribute__((used)) static int perl_start_script(const char *script, int argc, const char **argv)
{
 const char **command_line;
 int i, err = 0;

 command_line = malloc((argc + 2) * sizeof(const char *));
 command_line[0] = "";
 command_line[1] = script;
 for (i = 2; i < argc + 2; i++)
  command_line[i] = argv[i - 2];

 my_perl = perl_alloc();
 perl_construct(my_perl);

 if (perl_parse(my_perl, xs_init, argc + 2, (char **)command_line,
         (char **)((void*)0))) {
  err = -1;
  goto error;
 }

 if (perl_run(my_perl)) {
  err = -1;
  goto error;
 }

 if (SvTRUE(ERRSV)) {
  err = -1;
  goto error;
 }

 run_start_sub();

 free(command_line);
 return 0;
error:
 perl_free(my_perl);
 free(command_line);

 return err;
}
