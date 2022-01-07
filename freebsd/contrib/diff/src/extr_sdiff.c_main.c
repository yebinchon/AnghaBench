
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_filter {int dummy; } ;
typedef int sigset_t ;
typedef int FILE ;


 char* DEFAULT_DIFF_PROGRAM ;

 int EINTR ;
 int ENOENT ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int EXIT_TROUBLE ;

 int LC_ALL ;
 int LOCALEDIR ;
 int PACKAGE ;
 int PACKAGE_NAME ;
 int PACKAGE_VERSION ;
 int SIGINT ;
 int SIGPIPE ;
 int SIG_BLOCK ;
 scalar_t__ SIG_DFL ;
 scalar_t__ SIG_IGN ;
 int SIG_SETMASK ;
 int STDOUT_FILENO ;


 int WEXITSTATUS (int) ;
 int _exit (int) ;
 int bindtextdomain (int ,int ) ;
 int c_stack_action (int ) ;
 scalar_t__ catchsig ;
 int check_child_status (int,int,int ,char*) ;
 int check_stdout () ;
 int checksigs () ;
 int ck_fclose (int *) ;
 int * ck_fopen (char const*,char*) ;
 int cleanup ;
 int close (int) ;
 int diffarg (char*) ;
 char** diffargv ;
 scalar_t__ diffpid ;
 int diraccess (char*) ;
 int dup2 (int,int) ;
 char const* editor_program ;
 int errno ;
 int execvp (char*,char**) ;
 int exit (int ) ;
 int exit_failure ;
 int exiterr () ;
 char* expand_name (char*,int,char*) ;
 int fatal (char*) ;
 int * fdopen (int,char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 int getopt_long (int,char**,char*,int ,int ) ;
 int handler_index_of_SIGINT ;
 int handler_index_of_SIGPIPE ;
 scalar_t__ initial_handler (int ) ;
 int initialize_main (int*,char***) ;
 int interact (struct line_filter*,struct line_filter*,char const*,struct line_filter*,char const*,int *) ;
 int lf_init (struct line_filter*,int *) ;
 int longopts ;
 char* optarg ;
 int optind ;
 char const* output ;
 int pclose (int *) ;
 int perror_fatal (char*) ;
 scalar_t__ pipe (int*) ;
 int * popen (char*,char*) ;
 char* program_name ;
 scalar_t__ quote_system_arg (char*,char*) ;
 int setlocale (int ,char*) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int signal_handler (int ,scalar_t__) ;
 int sigprocmask (int ,int *,int *) ;
 int stdout ;
 int suppress_common_lines ;
 int textdomain (int ) ;
 scalar_t__ tmpname ;
 int trapsigs () ;
 int try_help (char*,char*) ;
 int unlink (scalar_t__) ;
 int untrapsig (int ) ;
 int usage () ;
 int version_etc (int ,char*,int ,int ,char*,char*) ;
 scalar_t__ vfork () ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;
 char* xmalloc (size_t) ;

int
main (int argc, char *argv[])
{
  int opt;
  char const *prog;

  exit_failure = EXIT_TROUBLE;
  initialize_main (&argc, &argv);
  program_name = argv[0];
  setlocale (LC_ALL, "");
  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);
  c_stack_action (cleanup);

  prog = getenv ("EDITOR");
  if (prog)
    editor_program = prog;

  diffarg (DEFAULT_DIFF_PROGRAM);


  while ((opt = getopt_long (argc, argv, "abBdEHiI:lo:stvw:W", longopts, 0))
  != -1)
    {
      switch (opt)
 {
 case 'a':
   diffarg ("-a");
   break;

 case 'b':
   diffarg ("-b");
   break;

 case 'B':
   diffarg ("-B");
   break;

 case 'd':
   diffarg ("-d");
   break;

 case 'E':
   diffarg ("-E");
   break;

 case 'H':
   diffarg ("-H");
   break;

 case 'i':
   diffarg ("-i");
   break;

 case 'I':
   diffarg ("-I");
   diffarg (optarg);
   break;

 case 'l':
   diffarg ("--left-column");
   break;

 case 'o':
   output = optarg;
   break;

 case 's':
   suppress_common_lines = 1;
   break;

 case 't':
   diffarg ("-t");
   break;

 case 'v':
   version_etc (stdout, "sdiff", PACKAGE_NAME, PACKAGE_VERSION,
         "Thomas Lord", (char *) 0);
   check_stdout ();
   return EXIT_SUCCESS;

 case 'w':
   diffarg ("-W");
   diffarg (optarg);
   break;

 case 'W':
   diffarg ("-w");
   break;

 case 131:
   diffargv[0] = optarg;
   break;

 case 130:
   usage ();
   check_stdout ();
   return EXIT_SUCCESS;

 case 129:
   diffarg ("--strip-trailing-cr");
   break;

 case 128:
   diffarg ("--tabsize");
   diffarg (optarg);
   break;

 default:
   try_help (0, 0);
 }
    }

  if (argc - optind != 2)
    {
      if (argc - optind < 2)
 try_help ("missing operand after `%s'", argv[argc - 1]);
      else
 try_help ("extra operand `%s'", argv[optind + 2]);
    }

  if (! output)
    {

      if (suppress_common_lines)
 diffarg ("--suppress-common-lines");
      diffarg ("-y");
      diffarg ("--");
      diffarg (argv[optind]);
      diffarg (argv[optind + 1]);
      diffarg (0);
      execvp (diffargv[0], (char **) diffargv);
      perror_fatal (diffargv[0]);
    }
  else
    {
      char const *lname, *rname;
      FILE *left, *right, *out, *diffout;
      bool interact_ok;
      struct line_filter lfilt;
      struct line_filter rfilt;
      struct line_filter diff_filt;
      bool leftdir = diraccess (argv[optind]);
      bool rightdir = diraccess (argv[optind + 1]);

      if (leftdir & rightdir)
 fatal ("both files to be compared are directories");

      lname = expand_name (argv[optind], leftdir, argv[optind + 1]);
      left = ck_fopen (lname, "r");
      rname = expand_name (argv[optind + 1], rightdir, argv[optind]);
      right = ck_fopen (rname, "r");
      out = ck_fopen (output, "w");

      diffarg ("--sdiff-merge-assist");
      diffarg ("--");
      diffarg (argv[optind]);
      diffarg (argv[optind + 1]);
      diffarg (0);

      trapsigs ();


      {
 size_t cmdsize = 1;
 char *p, *command;
 int i;

 for (i = 0; diffargv[i]; i++)
   cmdsize += quote_system_arg (0, diffargv[i]) + 1;
 command = p = xmalloc (cmdsize);
 for (i = 0; diffargv[i]; i++)
   {
     p += quote_system_arg (p, diffargv[i]);
     *p++ = ' ';
   }
 p[-1] = 0;
 errno = 0;
 diffout = popen (command, "r");
 if (! diffout)
   perror_fatal (command);
 free (command);
      }
      lf_init (&diff_filt, diffout);
      lf_init (&lfilt, left);
      lf_init (&rfilt, right);

      interact_ok = interact (&diff_filt, &lfilt, lname, &rfilt, rname, out);

      ck_fclose (left);
      ck_fclose (right);
      ck_fclose (out);

      {
 int wstatus;
 int werrno = 0;


 wstatus = pclose (diffout);
 if (wstatus == -1)
   werrno = errno;
 if (tmpname)
   {
     unlink (tmpname);
     tmpname = 0;
   }

 if (! interact_ok)
   exiterr ();

 check_child_status (werrno, wstatus, EXIT_FAILURE, diffargv[0]);
 untrapsig (0);
 checksigs ();
 exit (WEXITSTATUS (wstatus));
      }
    }
  return EXIT_SUCCESS;
}
