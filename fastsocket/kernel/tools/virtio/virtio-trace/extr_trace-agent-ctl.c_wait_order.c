
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;


 int EVENT_WAIT_MSEC ;
 int EXIT_FAILURE ;
 int POLLIN ;
 int cond_wakeup ;
 int exit (int ) ;
 int global_run_operation ;
 int global_sig_receive ;
 scalar_t__ global_signal_val ;
 int poll (struct pollfd*,int,int ) ;
 int pr_err (char*) ;
 int pr_info (char*,scalar_t__) ;
 int pthread_cond_broadcast (int *) ;

__attribute__((used)) static int wait_order(int ctl_fd)
{
 struct pollfd poll_fd;
 int ret = 0;

 while (!global_sig_receive) {
  poll_fd.fd = ctl_fd;
  poll_fd.events = POLLIN;

  ret = poll(&poll_fd, 1, EVENT_WAIT_MSEC);

  if (global_signal_val) {
   global_sig_receive = 1;
   pr_info("Receive interrupt %d\n", global_signal_val);


   if (!global_run_operation)
    pthread_cond_broadcast(&cond_wakeup);

   ret = -1;
   break;
  }

  if (ret < 0) {
   pr_err("Polling error\n");
   goto error;
  }

  if (ret)
   break;
 };

 return ret;

error:
 exit(EXIT_FAILURE);
}
