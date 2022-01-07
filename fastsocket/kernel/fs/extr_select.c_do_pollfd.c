
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pollfd {int fd; unsigned int events; unsigned int revents; } ;
struct file {TYPE_1__* f_op; } ;
struct TYPE_6__ {unsigned int key; } ;
typedef TYPE_2__ poll_table ;
struct TYPE_5__ {unsigned int (* poll ) (struct file*,TYPE_2__*) ;} ;


 unsigned int DEFAULT_POLLMASK ;
 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLNVAL ;
 struct file* fget_light (int,int*) ;
 int fput_light (struct file*,int) ;
 unsigned int stub1 (struct file*,TYPE_2__*) ;

__attribute__((used)) static inline unsigned int do_pollfd(struct pollfd *pollfd, poll_table *pwait)
{
 unsigned int mask;
 int fd;

 mask = 0;
 fd = pollfd->fd;
 if (fd >= 0) {
  int fput_needed;
  struct file * file;

  file = fget_light(fd, &fput_needed);
  mask = POLLNVAL;
  if (file != ((void*)0)) {
   mask = DEFAULT_POLLMASK;
   if (file->f_op && file->f_op->poll) {
    if (pwait)
     pwait->key = pollfd->events |
       POLLERR | POLLHUP;
    mask = file->f_op->poll(file, pwait);
   }

   mask &= pollfd->events | POLLERR | POLLHUP;
   fput_light(file, fput_needed);
  }
 }
 pollfd->revents = mask;

 return mask;
}
