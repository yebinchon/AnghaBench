
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qitem {int * mailf; int mailfn; int * queuef; int queuefn; } ;


 scalar_t__ EWOULDBLOCK ;
 int LOG_INFO ;
 int O_NONBLOCK ;
 int O_RDWR ;
 scalar_t__ errno ;
 int * fdopen (int,char*) ;
 int * fopen (int ,char*) ;
 int open_locked (int ,int) ;
 int syslog (int ,char*) ;

int
acquirespool(struct qitem *it)
{
 int queuefd;

 if (it->queuef == ((void*)0)) {
  queuefd = open_locked(it->queuefn, O_RDWR|O_NONBLOCK);
  if (queuefd < 0)
   goto fail;
  it->queuef = fdopen(queuefd, "r+");
  if (it->queuef == ((void*)0))
   goto fail;
 }

 if (it->mailf == ((void*)0)) {
  it->mailf = fopen(it->mailfn, "r");
  if (it->mailf == ((void*)0))
   goto fail;
 }

 return (0);

fail:
 if (errno == EWOULDBLOCK)
  return (1);
 syslog(LOG_INFO, "could not acquire queue file: %m");
 return (-1);
}
