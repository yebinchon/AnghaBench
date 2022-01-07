
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_thread_info {int cpu_num; int in_fd; int out_fd; int read_pipe; int write_pipe; unsigned long pipe_size; } ;


 int EXIT_FAILURE ;
 int F_SETPIPE_SZ ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int O_WRONLY ;
 int STDOUT_FILENO ;
 int exit (int ) ;
 scalar_t__ fcntl (int,int ,unsigned long) ;
 void* open (char const*,int ) ;
 scalar_t__ pipe2 (int*,int ) ;
 int pr_err (char*,int) ;

void *rw_thread_init(int cpu, const char *in_path, const char *out_path,
    bool stdout_flag, unsigned long pipe_size,
    struct rw_thread_info *rw_ti)
{
 int data_pipe[2];

 rw_ti->cpu_num = cpu;


 rw_ti->in_fd = open(in_path, O_RDONLY);
 if (rw_ti->in_fd == -1) {
  pr_err("Could not open in_fd (CPU:%d)\n", cpu);
  goto error;
 }


 if (!stdout_flag) {

  rw_ti->out_fd = open(out_path, O_WRONLY);
  if (rw_ti->out_fd == -1) {
   pr_err("Could not open out_fd (CPU:%d)\n", cpu);
   goto error;
  }
 } else

  rw_ti->out_fd = STDOUT_FILENO;

 if (pipe2(data_pipe, O_NONBLOCK) < 0) {
  pr_err("Could not create pipe in rw-thread(%d)\n", cpu);
  goto error;
 }
 rw_ti->read_pipe = data_pipe[1];
 rw_ti->write_pipe = data_pipe[0];
 rw_ti->pipe_size = pipe_size;

 return ((void*)0);

error:
 exit(EXIT_FAILURE);
}
