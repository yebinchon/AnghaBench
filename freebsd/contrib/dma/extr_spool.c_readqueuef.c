
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int queue; } ;
struct qitem {char* sender; char* queueid; char* queuefn; } ;
typedef int line ;
typedef int itmqueue ;
typedef int FILE ;


 int EINVAL ;
 struct qitem* LIST_FIRST (int *) ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct qitem*,int ) ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 scalar_t__ add_recp (struct queue*,char*,int ) ;
 int bzero (struct queue*,int) ;
 int errno ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ isspace (char) ;
 int next ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 int syslog (int ,char*,char*,...) ;

__attribute__((used)) static struct qitem *
readqueuef(struct queue *queue, char *queuefn)
{
 char line[1000];
 struct queue itmqueue;
 FILE *queuef = ((void*)0);
 char *s;
 char *queueid = ((void*)0), *sender = ((void*)0), *addr = ((void*)0);
 struct qitem *it = ((void*)0);

 bzero(&itmqueue, sizeof(itmqueue));
 LIST_INIT(&itmqueue.queue);

 queuef = fopen(queuefn, "r");
 if (queuef == ((void*)0))
  goto out;

 while (!feof(queuef)) {
  if (fgets(line, sizeof(line), queuef) == ((void*)0) || line[0] == 0)
   break;
  line[strlen(line) - 1] = 0;

  s = strchr(line, ':');
  if (s == ((void*)0))
   goto malformed;
  *s = 0;

  s++;
  while (isspace(*s))
   s++;

  s = strdup(s);
  if (s == ((void*)0))
   goto malformed;

  if (strcmp(line, "ID") == 0) {
   queueid = s;
  } else if (strcmp(line, "Sender") == 0) {
   sender = s;
  } else if (strcmp(line, "Recipient") == 0) {
   addr = s;
  } else {
   syslog(LOG_DEBUG, "ignoring unknown queue info `%s' in `%s'",
          line, queuefn);
   free(s);
  }
 }

 if (queueid == ((void*)0) || sender == ((void*)0) || addr == ((void*)0) ||
     *queueid == 0 || *addr == 0) {
malformed:
  errno = EINVAL;
  syslog(LOG_ERR, "malformed queue file `%s'", queuefn);
  goto out;
 }

 if (add_recp(&itmqueue, addr, 0) != 0)
  goto out;

 it = LIST_FIRST(&itmqueue.queue);
 it->sender = sender; sender = ((void*)0);
 it->queueid = queueid; queueid = ((void*)0);
 it->queuefn = queuefn; queuefn = ((void*)0);
 LIST_INSERT_HEAD(&queue->queue, it, next);

out:
 if (sender != ((void*)0))
  free(sender);
 if (queueid != ((void*)0))
  free(queueid);
 if (addr != ((void*)0))
  free(addr);
 if (queuef != ((void*)0))
  fclose(queuef);

 return (it);
}
