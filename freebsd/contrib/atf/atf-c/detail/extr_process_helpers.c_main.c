
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int check_args (int,char const* const*,int) ;
 int fprintf (int ,char*,char const* const,char const* const) ;
 int h_echo (char const* const) ;
 int h_exit_failure () ;
 int h_exit_signal () ;
 int h_exit_success () ;
 int h_stdout_stderr (char const* const) ;
 int stderr ;
 scalar_t__ strcmp (char const* const,char*) ;

int
main(int argc, const char *const argv[])
{
    int exitcode;

    check_args(argc, argv, 2);

    if (strcmp(argv[1], "echo") == 0) {
        check_args(argc, argv, 3);
        exitcode = h_echo(argv[2]);
    } else if (strcmp(argv[1], "exit-failure") == 0)
        exitcode = h_exit_failure();
    else if (strcmp(argv[1], "exit-signal") == 0)
        exitcode = h_exit_signal();
    else if (strcmp(argv[1], "exit-success") == 0)
        exitcode = h_exit_success();
    else if (strcmp(argv[1], "stdout-stderr") == 0) {
        check_args(argc, argv, 3);
        exitcode = h_stdout_stderr(argv[2]);
    } else {
        fprintf(stderr, "%s: Unknown helper %s\n", argv[0], argv[1]);
        exitcode = EXIT_FAILURE;
    }

    return exitcode;
}
