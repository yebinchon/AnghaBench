
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int v_fd; int v_dump_fd; int v_path; int v_size; } ;
typedef TYPE_1__ vnode_t ;
struct stat64 {int st_size; } ;
typedef int dumppath ;


 int FCREAT ;
 int FD_CLOEXEC ;
 int FREAD ;
 int F_SETFD ;
 int MAXPATHLEN ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_WRONLY ;
 int UMEM_NOFAIL ;
 char* basename (char*) ;
 int close (int) ;
 int errno ;
 int fcntl (int,int ,int ) ;
 int fstat64 (int,struct stat64*) ;
 int open64 (char*,int,...) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int spa_strdup (char*) ;
 int sprintf (char*,char*,char*) ;
 int stat64 (char*,struct stat64*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strstr (char*,char*) ;
 int umask (int) ;
 TYPE_1__* umem_zalloc (int,int ) ;
 char* vn_dumpdir ;

int
vn_open(char *path, int x1, int flags, int mode, vnode_t **vpp, int x2, int x3)
{
 int fd;
 int dump_fd;
 vnode_t *vp;
 int old_umask;
 char realpath[MAXPATHLEN];
 struct stat64 st;
 if (strncmp(path, "/dev/", 5) == 0) {
  char *dsk;
  fd = open64(path, O_RDONLY);
  if (fd == -1)
   return (errno);
  if (fstat64(fd, &st) == -1) {
   close(fd);
   return (errno);
  }
  close(fd);
  (void) sprintf(realpath, "%s", path);
  dsk = strstr(path, "/dsk/");
  if (dsk != ((void*)0))
   (void) sprintf(realpath + (dsk - path) + 1, "r%s",
       dsk + 1);
 } else {
  (void) sprintf(realpath, "%s", path);
  if (!(flags & FCREAT) && stat64(realpath, &st) == -1)
   return (errno);
 }

 if (flags & FCREAT)
  old_umask = umask(0);





 fd = open64(realpath, flags - FREAD, mode);

 if (flags & FCREAT)
  (void) umask(old_umask);

 if (vn_dumpdir != ((void*)0)) {
  char dumppath[MAXPATHLEN];
  (void) snprintf(dumppath, sizeof (dumppath),
      "%s/%s", vn_dumpdir, basename(realpath));
  dump_fd = open64(dumppath, O_CREAT | O_WRONLY, 0666);
  if (dump_fd == -1)
   return (errno);
 } else {
  dump_fd = -1;
 }

 if (fd == -1)
  return (errno);

 if (fstat64(fd, &st) == -1) {
  close(fd);
  return (errno);
 }

 (void) fcntl(fd, F_SETFD, FD_CLOEXEC);

 *vpp = vp = umem_zalloc(sizeof (vnode_t), UMEM_NOFAIL);

 vp->v_fd = fd;
 vp->v_size = st.st_size;
 vp->v_path = spa_strdup(path);
 vp->v_dump_fd = dump_fd;

 return (0);
}
