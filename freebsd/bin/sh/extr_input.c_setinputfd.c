
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int * buf; } ;


 scalar_t__ BUFSIZ ;
 void* ckmalloc (scalar_t__) ;
 int close (int) ;
 TYPE_1__* parsefile ;
 scalar_t__ parselleft ;
 scalar_t__ parsenleft ;
 int plinno ;
 int pushfile () ;

void
setinputfd(int fd, int push)
{
 if (push) {
  pushfile();
  parsefile->buf = ckmalloc(BUFSIZ + 1);
 }
 if (parsefile->fd > 0)
  close(parsefile->fd);
 parsefile->fd = fd;
 if (parsefile->buf == ((void*)0))
  parsefile->buf = ckmalloc(BUFSIZ + 1);
 parselleft = parsenleft = 0;
 plinno = 1;
}
