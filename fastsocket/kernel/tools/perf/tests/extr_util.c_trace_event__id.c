
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int id ;


 int O_RDONLY ;
 scalar_t__ asprintf (char**,char*,int ,char const*) ;
 int atoi (char*) ;
 int close (int) ;
 int free (char*) ;
 int open (char*,int ) ;
 scalar_t__ read (int,char*,int) ;
 int tracing_events_path ;

int trace_event__id(const char *evname)
{
 char *filename;
 int err = -1, fd;

 if (asprintf(&filename,
       "%s/syscalls/%s/id",
       tracing_events_path, evname) < 0)
  return -1;

 fd = open(filename, O_RDONLY);
 if (fd >= 0) {
  char id[16];
  if (read(fd, id, sizeof(id)) > 0)
   err = atoi(id);
  close(fd);
 }

 free(filename);
 return err;
}
