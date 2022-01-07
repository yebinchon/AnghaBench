
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsocket_ioctl_arg {int fd; } ;


 int EMFILE ;
 int FSOCKET_ERR (char*) ;
 int FSOCKET_IOC_CLOSE ;
 scalar_t__ INIT_FDSET_NUM ;
 int* calloc (scalar_t__,int) ;
 int errno ;
 int free (int*) ;
 int fsocket_channel_fd ;
 int fsocket_fd_num ;
 int* fsocket_fd_set ;
 int ioctl (int ,int ,struct fsocket_ioctl_arg*) ;
 int memcpy (int*,int*,int) ;

int fastsocket_expand_fdset(int fd)
{
 int *old_fd_set = fsocket_fd_set;
 int ret = fd;
 struct fsocket_ioctl_arg arg;

 if (fd >= fsocket_fd_num) {
  fsocket_fd_set = calloc(fsocket_fd_num + INIT_FDSET_NUM, sizeof(int));
  if (!fsocket_fd_set) {
   FSOCKET_ERR("Re allocate memory for listen fd set failed\n");
   arg.fd = fd;
   ioctl(fsocket_channel_fd, FSOCKET_IOC_CLOSE, &arg);

   errno = EMFILE;
   ret = -1;
  } else {
   memcpy(fsocket_fd_set, old_fd_set, fsocket_fd_num * sizeof(int));
   free(old_fd_set);
   fsocket_fd_num += INIT_FDSET_NUM;
  }
 }
 return ret;
}
