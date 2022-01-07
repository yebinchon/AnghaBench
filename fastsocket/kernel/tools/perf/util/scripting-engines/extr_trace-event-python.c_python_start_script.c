
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int PATH_MAX ;
 int PyRun_SimpleFile (int *,char const*) ;
 int PySys_SetArgv (int,char**) ;
 int Py_Finalize () ;
 int Py_Initialize () ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 int free (char const**) ;
 int initperf_trace_context () ;
 char** malloc (int) ;
 int perror (char*) ;
 int run_start_sub () ;
 int sprintf (char*,char*,char const*) ;
 int stderr ;

__attribute__((used)) static int python_start_script(const char *script, int argc, const char **argv)
{
 const char **command_line;
 char buf[PATH_MAX];
 int i, err = 0;
 FILE *fp;

 command_line = malloc((argc + 1) * sizeof(const char *));
 command_line[0] = script;
 for (i = 1; i < argc + 1; i++)
  command_line[i] = argv[i - 1];

 Py_Initialize();

 initperf_trace_context();

 PySys_SetArgv(argc + 1, (char **)command_line);

 fp = fopen(script, "r");
 if (!fp) {
  sprintf(buf, "Can't open python script \"%s\"", script);
  perror(buf);
  err = -1;
  goto error;
 }

 err = PyRun_SimpleFile(fp, script);
 if (err) {
  fprintf(stderr, "Error running python script %s\n", script);
  goto error;
 }

 err = run_start_sub();
 if (err) {
  fprintf(stderr, "Error starting python script %s\n", script);
  goto error;
 }

 free(command_line);

 return err;
error:
 Py_Finalize();
 free(command_line);

 return err;
}
