
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct queue {int queue; } ;
struct qitem {char* mailfn; } ;
struct dirent {char* d_name; } ;
struct TYPE_2__ {int spooldir; } ;
typedef int DIR ;


 int EINVAL ;
 int EX_NOINPUT ;
 int LIST_INIT (int *) ;
 int LOG_INFO ;
 int S_ISREG (int ) ;
 scalar_t__ asprintf (char**,char*,int ,char*) ;
 int bzero (struct queue*,int) ;
 int closedir (int *) ;
 TYPE_1__ config ;
 int err (int ,char*) ;
 int errno ;
 int free (char*) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;
 struct qitem* readqueuef (struct queue*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int syslog (int ,char*,char*,char*) ;

int
load_queue(struct queue *queue)
{
 struct stat sb;
 struct qitem *it;
 DIR *spooldir;
 struct dirent *de;
 char *queuefn;
 char *mailfn;

 bzero(queue, sizeof(*queue));
 LIST_INIT(&queue->queue);

 spooldir = opendir(config.spooldir);
 if (spooldir == ((void*)0))
  err(EX_NOINPUT, "reading queue");

 while ((de = readdir(spooldir)) != ((void*)0)) {
  queuefn = ((void*)0);
  mailfn = ((void*)0);


  if (de->d_name[0] != 'Q')
   continue;
  if (asprintf(&queuefn, "%s/Q%s", config.spooldir, de->d_name + 1) < 0)
   goto fail;
  if (asprintf(&mailfn, "%s/M%s", config.spooldir, de->d_name + 1) < 0)
   goto fail;






  if (stat(queuefn, &sb) != 0)
   goto skip_item;
  if (!S_ISREG(sb.st_mode)) {
   errno = EINVAL;
   goto skip_item;
  }

  if (stat(mailfn, &sb) != 0)
   goto skip_item;

  it = readqueuef(queue, queuefn);
  if (it == ((void*)0))
   goto skip_item;

  it->mailfn = mailfn;
  continue;

skip_item:
  syslog(LOG_INFO, "could not pick up queue file: `%s'/`%s': %m", queuefn, mailfn);
  if (queuefn != ((void*)0))
   free(queuefn);
  if (mailfn != ((void*)0))
   free(mailfn);
 }
 closedir(spooldir);
 return (0);

fail:
 return (-1);
}
