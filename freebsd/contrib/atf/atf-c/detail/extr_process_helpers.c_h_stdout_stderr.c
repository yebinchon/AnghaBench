
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static
int
h_stdout_stderr(const char *id)
{
    fprintf(stdout, "Line 1 to stdout for %s\n", id);
    fprintf(stdout, "Line 2 to stdout for %s\n", id);
    fprintf(stderr, "Line 1 to stderr for %s\n", id);
    fprintf(stderr, "Line 2 to stderr for %s\n", id);

    return EXIT_SUCCESS;
}
