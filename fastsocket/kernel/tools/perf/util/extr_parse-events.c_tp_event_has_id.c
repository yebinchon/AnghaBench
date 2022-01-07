
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;


 int EINVAL ;
 int MAXPATHLEN ;
 int O_RDONLY ;
 int close (int) ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,char*,char*,char*) ;
 char* tracing_events_path ;

__attribute__((used)) static int tp_event_has_id(struct dirent *sys_dir, struct dirent *evt_dir)
{
 char evt_path[MAXPATHLEN];
 int fd;

 snprintf(evt_path, MAXPATHLEN, "%s/%s/%s/id", tracing_events_path,
   sys_dir->d_name, evt_dir->d_name);
 fd = open(evt_path, O_RDONLY);
 if (fd < 0)
  return -EINVAL;
 close(fd);

 return 0;
}
