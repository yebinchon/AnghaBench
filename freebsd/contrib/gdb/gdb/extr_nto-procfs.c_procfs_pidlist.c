
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct dirent {char* d_name; } ;
struct TYPE_5__ {scalar_t__ num_threads; char* path; int tid; } ;
typedef TYPE_1__ procfs_status ;
typedef TYPE_1__ procfs_info ;
typedef TYPE_1__ procfs_debuginfo ;
typedef scalar_t__ pid_t ;
typedef int buf ;
typedef int DIR ;


 int DCMD_PROC_INFO ;
 int DCMD_PROC_MAPDEBUG_BASE ;
 int DCMD_PROC_TIDSTATUS ;
 scalar_t__ EOK ;
 int O_RDONLY ;
 scalar_t__ atoi (char*) ;
 int close (int) ;
 int closedir (int *) ;
 scalar_t__ devctl (int,int ,TYPE_1__*,int,int ) ;
 int errno ;
 int fprintf_unfiltered (int ,char*,char*,int ,...) ;
 int gdb_stderr ;
 char* nto_procfs_path ;
 int open (char*,int ) ;
 int * opendir (char*) ;
 int printf_filtered (char*,char*,scalar_t__,scalar_t__) ;
 struct dirent* readdir (int *) ;
 int rewinddir (int *) ;
 int safe_strerror (int ) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strcpy (char*,char*) ;

void
procfs_pidlist (char *args, int from_tty)
{
  DIR *dp = ((void*)0);
  struct dirent *dirp = ((void*)0);
  int fd = -1;
  char buf[512];
  procfs_info *pidinfo = ((void*)0);
  procfs_debuginfo *info = ((void*)0);
  procfs_status *status = ((void*)0);
  pid_t num_threads = 0;
  pid_t pid;
  char name[512];

  dp = opendir (nto_procfs_path);
  if (dp == ((void*)0))
    {
      fprintf_unfiltered (gdb_stderr, "failed to opendir \"%s\" - %d (%s)",
       nto_procfs_path, errno, safe_strerror (errno));
      return;
    }


  rewinddir (dp);

  do
    {

      do
 {
   dirp = readdir (dp);
   if (dirp == ((void*)0))
     {
       closedir (dp);
       return;
     }
   snprintf (buf, 511, "%s/%s/as", nto_procfs_path, dirp->d_name);
   pid = atoi (dirp->d_name);
 }
      while (pid == 0);


      fd = open (buf, O_RDONLY);
      if (fd == -1)
 {
   fprintf_unfiltered (gdb_stderr, "failed to open %s - %d (%s)\n",
    buf, errno, safe_strerror (errno));
   closedir (dp);
   return;
 }

      pidinfo = (procfs_info *) buf;
      if (devctl (fd, DCMD_PROC_INFO, pidinfo, sizeof (buf), 0) != EOK)
 {
   fprintf_unfiltered (gdb_stderr,
    "devctl DCMD_PROC_INFO failed - %d (%s)\n", errno,
    safe_strerror (errno));
   break;
 }
      num_threads = pidinfo->num_threads;

      info = (procfs_debuginfo *) buf;
      if (devctl (fd, DCMD_PROC_MAPDEBUG_BASE, info, sizeof (buf), 0) != EOK)
 strcpy (name, "unavailable");
      else
 strcpy (name, info->path);


      status = (procfs_status *) buf;
      for (status->tid = 1; status->tid <= num_threads; status->tid++)
 {
   if (devctl (fd, DCMD_PROC_TIDSTATUS, status, sizeof (buf), 0) != EOK
       && status->tid != 0)
     break;
   if (status->tid != 0)
     printf_filtered ("%s - %d/%d\n", name, pid, status->tid);
 }
      close (fd);
    }
  while (dirp != ((void*)0));

  close (fd);
  closedir (dp);
  return;
}
