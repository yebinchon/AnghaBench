
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qitem {char* queueid; char* sender; char* addr; int * queuef; int queuefn; } ;


 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 scalar_t__ fchmod (int,int) ;
 int * fdopen (int,char*) ;
 scalar_t__ fflush (int *) ;
 int fileno (int *) ;
 int fprintf (int *,char*,char*,char*,char*) ;
 scalar_t__ fsync (int ) ;
 int open_locked (int ,int,int) ;

__attribute__((used)) static int
writequeuef(struct qitem *it)
{
 int error;
 int queuefd;

 queuefd = open_locked(it->queuefn, O_CREAT|O_EXCL|O_RDWR, 0660);
 if (queuefd == -1)
  return (-1);
 if (fchmod(queuefd, 0660) < 0)
  return (-1);
 it->queuef = fdopen(queuefd, "w+");
 if (it->queuef == ((void*)0))
  return (-1);

 error = fprintf(it->queuef,
   "ID: %s\n"
   "Sender: %s\n"
   "Recipient: %s\n",
    it->queueid,
    it->sender,
    it->addr);

 if (error <= 0)
  return (-1);

 if (fflush(it->queuef) != 0 || fsync(fileno(it->queuef)) != 0)
  return (-1);

 return (0);
}
