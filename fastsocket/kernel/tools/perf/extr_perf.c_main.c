
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 int _SC_PAGE_SIZE ;
 int commit_pager_choice () ;
 int debugfs_mount (int *) ;
 int die (char*,char const*) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char const*) ;
 int handle_internal_command (int,char const**) ;
 int handle_options (char const***,int*,int *) ;
 char* help_unknown_cmd (char const*) ;
 int list_common_cmds_help () ;
 int page_size ;
 char* perf_extract_argv0_path (char const*) ;
 char* perf_more_info_string ;
 char* perf_usage_string ;
 int prefixcmp (char const*,char*) ;
 int printf (char*,char*) ;
 int pthread__block_sigwinch () ;
 int run_argv (int*,char const***) ;
 int set_buildid_dir () ;
 int setup_path () ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int sysconf (int ) ;
 int test_attr__init () ;

int main(int argc, const char **argv)
{
 const char *cmd;

 page_size = sysconf(_SC_PAGE_SIZE);

 cmd = perf_extract_argv0_path(argv[0]);
 if (!cmd)
  cmd = "perf-help";

 debugfs_mount(((void*)0));
 if (!prefixcmp(cmd, "perf-")) {
  cmd += 5;
  argv[0] = cmd;
  handle_internal_command(argc, argv);
  die("cannot handle %s internally", cmd);
 }


 argv++;
 argc--;
 handle_options(&argv, &argc, ((void*)0));
 commit_pager_choice();
 set_buildid_dir();

 if (argc > 0) {
  if (!prefixcmp(argv[0], "--"))
   argv[0] += 2;
 } else {

  printf("\n usage: %s\n\n", perf_usage_string);
  list_common_cmds_help();
  printf("\n %s\n\n", perf_more_info_string);
  exit(1);
 }
 cmd = argv[0];



 test_attr__init();
 setup_path();





 pthread__block_sigwinch();

 while (1) {
  static int done_help;
  static int was_alias;

  was_alias = run_argv(&argc, &argv);
  if (errno != ENOENT)
   break;

  if (was_alias) {
   fprintf(stderr, "Expansion of alias '%s' failed; "
    "'%s' is not a perf-command\n",
    cmd, argv[0]);
   exit(1);
  }
  if (!done_help) {
   cmd = argv[0] = help_unknown_cmd(cmd);
   done_help = 1;
  } else
   break;
 }

 fprintf(stderr, "Failed to run command '%s': %s\n",
  cmd, strerror(errno));

 return 1;
}
