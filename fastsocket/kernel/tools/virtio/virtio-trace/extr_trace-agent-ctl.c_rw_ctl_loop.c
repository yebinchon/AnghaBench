
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int buf ;


 int EXIT_FAILURE ;
 int HOST_MSG_SIZE ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int cond_wakeup ;
 int exit (int ) ;
 int global_run_operation ;
 int global_sig_receive ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int pr_info (char*,char*) ;
 int pthread_cond_broadcast (int *) ;
 int read (int,char*,int) ;
 int signal (int ,int ) ;
 int signal_handler ;
 int wait_order (int) ;

void *rw_ctl_loop(int ctl_fd)
{
 ssize_t rlen;
 char buf[HOST_MSG_SIZE];
 int ret;


 signal(SIGTERM, signal_handler);
 signal(SIGINT, signal_handler);
 signal(SIGQUIT, signal_handler);

 while (!global_sig_receive) {

  ret = wait_order(ctl_fd);
  if (ret < 0)
   break;

  rlen = read(ctl_fd, buf, sizeof(buf));
  if (rlen < 0) {
   pr_err("read data error in ctl thread\n");
   goto error;
  }

  if (rlen == 2 && buf[0] == '1') {




   global_run_operation = 1;
   pthread_cond_broadcast(&cond_wakeup);
   pr_debug("Wake up all read/write threads\n");
  } else if (rlen == 2 && buf[0] == '0') {




   global_run_operation = 0;
   pr_debug("Stop all read/write threads\n");
  } else
   pr_info("Invalid host notification: %s\n", buf);
 }

 return ((void*)0);

error:
 exit(EXIT_FAILURE);
}
