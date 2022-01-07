
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* inPollfd; } ;
struct TYPE_4__ {int revents; } ;
typedef TYPE_2__ Job ;


 int POLLIN ;
 int Punt (char*) ;

__attribute__((used)) static int
readyfd(Job *job)
{
    if (job->inPollfd == ((void*)0))
 Punt("Polling unwatched job");
    return (job->inPollfd->revents & POLLIN) != 0;
}
