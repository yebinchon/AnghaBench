
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_record_opts {int target; scalar_t__ pipe_output; } ;
struct TYPE_4__ {scalar_t__ pid; int cork_fd; } ;
struct perf_evlist {TYPE_2__ workload; TYPE_1__* threads; } ;
struct TYPE_3__ {scalar_t__* map; } ;


 int FD_CLOEXEC ;
 int F_SETFD ;
 int SIGUSR1 ;
 int close (int) ;
 int dup2 (int,int) ;
 int execvp (char const*,char**) ;
 int exit (int) ;
 int fcntl (int,int ,int ) ;
 scalar_t__ fork () ;
 int getppid () ;
 int kill (int ,int ) ;
 scalar_t__ perf_target__none (int *) ;
 int perror (char const*) ;
 scalar_t__ pipe (int*) ;
 int read (int,char*,int) ;

int perf_evlist__prepare_workload(struct perf_evlist *evlist,
      struct perf_record_opts *opts,
      const char *argv[])
{
 int child_ready_pipe[2], go_pipe[2];
 char bf;

 if (pipe(child_ready_pipe) < 0) {
  perror("failed to create 'ready' pipe");
  return -1;
 }

 if (pipe(go_pipe) < 0) {
  perror("failed to create 'go' pipe");
  goto out_close_ready_pipe;
 }

 evlist->workload.pid = fork();
 if (evlist->workload.pid < 0) {
  perror("failed to fork");
  goto out_close_pipes;
 }

 if (!evlist->workload.pid) {
  if (opts->pipe_output)
   dup2(2, 1);

  close(child_ready_pipe[0]);
  close(go_pipe[1]);
  fcntl(go_pipe[0], F_SETFD, FD_CLOEXEC);






  execvp("", (char **)argv);




  close(child_ready_pipe[1]);




  if (read(go_pipe[0], &bf, 1) == -1)
   perror("unable to read pipe");

  execvp(argv[0], (char **)argv);

  perror(argv[0]);
  kill(getppid(), SIGUSR1);
  exit(-1);
 }

 if (perf_target__none(&opts->target))
  evlist->threads->map[0] = evlist->workload.pid;

 close(child_ready_pipe[1]);
 close(go_pipe[0]);



 if (read(child_ready_pipe[0], &bf, 1) == -1) {
  perror("unable to read pipe");
  goto out_close_pipes;
 }

 evlist->workload.cork_fd = go_pipe[1];
 close(child_ready_pipe[0]);
 return 0;

out_close_pipes:
 close(go_pipe[0]);
 close(go_pipe[1]);
out_close_ready_pipe:
 close(child_ready_pipe[0]);
 close(child_ready_pipe[1]);
 return -1;
}
