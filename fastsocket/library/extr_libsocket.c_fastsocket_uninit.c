
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int free (int ) ;
 int fsocket_channel_fd ;
 int fsocket_fd_set ;

__attribute__((destructor))
void fastsocket_uninit(void)
{
 close(fsocket_channel_fd);
 free(fsocket_fd_set);

 return;
}
