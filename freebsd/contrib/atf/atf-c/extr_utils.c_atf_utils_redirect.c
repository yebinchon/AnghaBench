
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int const STDERR_FILENO ;
 int const STDOUT_FILENO ;
 int close (int const) ;
 int dup2 (int const,int const) ;
 int err (int ,char*,...) ;
 int fflush (int ) ;
 int open (char const*,int,int) ;
 int stderr ;
 int stdout ;

void
atf_utils_redirect(const int target_fd, const char *name)
{
    if (target_fd == STDOUT_FILENO)
        fflush(stdout);
    else if (target_fd == STDERR_FILENO)
        fflush(stderr);

    const int new_fd = open(name, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (new_fd == -1)
        err(EXIT_FAILURE, "Cannot create %s", name);
    if (new_fd != target_fd) {
        if (dup2(new_fd, target_fd) == -1)
            err(EXIT_FAILURE, "Cannot redirect to fd %d", target_fd);
    }
    close(new_fd);
}
