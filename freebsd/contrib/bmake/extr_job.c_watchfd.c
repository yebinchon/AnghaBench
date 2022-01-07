
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int events; int fd; } ;
struct TYPE_5__ {TYPE_4__* inPollfd; int inPipe; } ;
typedef TYPE_1__ Job ;


 int POLLIN ;
 int Punt (char*) ;
 TYPE_4__* fds ;
 TYPE_1__** jobfds ;
 size_t nfds ;

__attribute__((used)) static void
watchfd(Job *job)
{
    if (job->inPollfd != ((void*)0))
 Punt("Watching watched job");

    fds[nfds].fd = job->inPipe;
    fds[nfds].events = POLLIN;
    jobfds[nfds] = job;
    job->inPollfd = &fds[nfds];
    nfds++;
}
