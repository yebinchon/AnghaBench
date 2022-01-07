
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int spooldir; } ;


 int LOG_ERR ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int SPOOL_FLUSHFILE ;
 scalar_t__ asprintf (char**,char*,int ,int ) ;
 int close (int) ;
 TYPE_1__ config ;
 int free (char*) ;
 int open (char*,int,int) ;
 int syslog (int ,char*) ;

int
flushqueue_signal(void)
{
        char *flushfn = ((void*)0);
 int fd;

        if (asprintf(&flushfn, "%s/%s", config.spooldir, SPOOL_FLUSHFILE) < 0)
  return (-1);
 fd = open(flushfn, O_CREAT|O_WRONLY|O_TRUNC, 0660);
 free(flushfn);
 if (fd < 0) {
  syslog(LOG_ERR, "could not open flush file: %m");
  return (-1);
 }
        close(fd);
 return (0);
}
