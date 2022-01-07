
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PEXECUTE_FIRST ;
 int PEXECUTE_LAST ;
 int PEXECUTE_SEARCH ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 size_t aux_info_file_name_index ;
 int aux_info_suffix ;
 int * compile_params ;
 int concat (int ,int ,int *) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int gcc_unreachable () ;
 size_t input_file_name_index ;
 int munge_compile_params (char*) ;
 int notice (char*,char*,char*,...) ;
 int pexecute (int ,char* const*,char*,int *,char**,char**,int) ;
 char* pname ;
 int pwait (int,int*,int ) ;
 int quiet_flag ;
 int shortpath (int *,char const*) ;
 int stderr ;
 char* xstrerror (int) ;

__attribute__((used)) static int
gen_aux_info_file (const char *base_filename)
{
  if (!input_file_name_index)
    munge_compile_params ("");


  compile_params[input_file_name_index] = shortpath (((void*)0), base_filename);

  compile_params[aux_info_file_name_index] =
    concat (compile_params[input_file_name_index], aux_info_suffix, ((void*)0));

  if (!quiet_flag)
    notice ("%s: compiling '%s'\n",
     pname, compile_params[input_file_name_index]);

  {
    char *errmsg_fmt, *errmsg_arg;
    int wait_status, pid;

    pid = pexecute (compile_params[0], (char * const *) compile_params,
      pname, ((void*)0), &errmsg_fmt, &errmsg_arg,
      PEXECUTE_FIRST | PEXECUTE_LAST | PEXECUTE_SEARCH);

    if (pid == -1)
      {
 int errno_val = errno;
 fprintf (stderr, "%s: ", pname);
 fprintf (stderr, errmsg_fmt, errmsg_arg);
 fprintf (stderr, ": %s\n", xstrerror (errno_val));
 return 0;
      }

    pid = pwait (pid, &wait_status, 0);
    if (pid == -1)
      {
 notice ("%s: wait: %s\n", pname, xstrerror (errno));
 return 0;
      }
    if (WIFSIGNALED (wait_status))
      {
 notice ("%s: subprocess got fatal signal %d\n",
  pname, WTERMSIG (wait_status));
 return 0;
      }
    if (WIFEXITED (wait_status))
      {
 if (WEXITSTATUS (wait_status) != 0)
   {
     notice ("%s: %s exited with status %d\n",
      pname, compile_params[0], WEXITSTATUS (wait_status));
     return 0;
   }
 return 1;
      }
    gcc_unreachable ();
  }
}
