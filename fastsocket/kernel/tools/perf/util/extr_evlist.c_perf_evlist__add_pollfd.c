
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_evlist {size_t nr_fds; TYPE_1__* pollfd; } ;
struct TYPE_2__ {int fd; int events; } ;


 int F_SETFL ;
 int O_NONBLOCK ;
 int POLLIN ;
 int fcntl (int,int ,int ) ;

void perf_evlist__add_pollfd(struct perf_evlist *evlist, int fd)
{
 fcntl(fd, F_SETFL, O_NONBLOCK);
 evlist->pollfd[evlist->nr_fds].fd = fd;
 evlist->pollfd[evlist->nr_fds].events = POLLIN;
 evlist->nr_fds++;
}
