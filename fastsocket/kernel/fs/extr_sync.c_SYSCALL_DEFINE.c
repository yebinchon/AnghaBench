
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;
typedef int SYSCALL_DEFINE ;


 int sys_sync_file_range (int,int ,int ,unsigned int) ;

SYSCALL_DEFINE(sync_file_range2)(int fd, unsigned int flags,
     loff_t offset, loff_t nbytes)
{
 return sys_sync_file_range(fd, offset, nbytes, flags);
}
