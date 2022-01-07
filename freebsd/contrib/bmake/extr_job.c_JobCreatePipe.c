
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* jobPipe; } ;
typedef TYPE_1__ Job ;


 int FD_CLOEXEC ;
 int F_DUPFD ;
 int F_GETFL ;
 int F_SETFD ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int Punt (char*,int ) ;
 int close (int) ;
 int errno ;
 int fcntl (int,int ,int) ;
 int pipe (int*) ;
 int strerror (int ) ;

__attribute__((used)) static void
JobCreatePipe(Job *job, int minfd)
{
    int i, fd, flags;

    if (pipe(job->jobPipe) == -1)
 Punt("Cannot create pipe: %s", strerror(errno));

    for (i = 0; i < 2; i++) {

       fd = fcntl(job->jobPipe[i], F_DUPFD, minfd);
       if (fd != -1) {
    close(job->jobPipe[i]);
    job->jobPipe[i] = fd;
       }
    }


    if (fcntl(job->jobPipe[0], F_SETFD, FD_CLOEXEC) == -1)
 Punt("Cannot set close-on-exec: %s", strerror(errno));
    if (fcntl(job->jobPipe[1], F_SETFD, FD_CLOEXEC) == -1)
 Punt("Cannot set close-on-exec: %s", strerror(errno));







    flags = fcntl(job->jobPipe[0], F_GETFL, 0);
    if (flags == -1)
 Punt("Cannot get flags: %s", strerror(errno));
    flags |= O_NONBLOCK;
    if (fcntl(job->jobPipe[0], F_SETFL, flags) == -1)
 Punt("Cannot set flags: %s", strerror(errno));
}
