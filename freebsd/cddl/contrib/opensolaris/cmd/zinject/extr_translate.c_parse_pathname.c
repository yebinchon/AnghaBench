
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {char* f_mntonname; char const* f_mntfromname; int f_fstypename; } ;
struct stat64 {int dummy; } ;


 int MAXPATHLEN ;
 int MNTTYPE_ZFS ;
 int compress_slashes (char const*,char*) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 scalar_t__ stat64 (char*,struct stat64*) ;
 int statfs (char*,struct statfs*) ;
 int stderr ;
 scalar_t__ strcmp (int ,int ) ;
 int strcpy (char*,char const*) ;
 char* strerror (int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int usage () ;

__attribute__((used)) static int
parse_pathname(const char *inpath, char *dataset, char *relpath,
    struct stat64 *statbuf)
{
 struct statfs sfs;
 const char *rel;
 char fullpath[MAXPATHLEN];

 compress_slashes(inpath, fullpath);

 if (fullpath[0] != '/') {
  (void) fprintf(stderr, "invalid object '%s': must be full "
      "path\n", fullpath);
  usage();
  return (-1);
 }

 if (strlen(fullpath) >= MAXPATHLEN) {
  (void) fprintf(stderr, "invalid object; pathname too long\n");
  return (-1);
 }

 if (stat64(fullpath, statbuf) != 0) {
  (void) fprintf(stderr, "cannot open '%s': %s\n",
      fullpath, strerror(errno));
  return (-1);
 }

 if (statfs(fullpath, &sfs) == -1) {
  (void) fprintf(stderr, "cannot find mountpoint for '%s': %s\n",
      fullpath, strerror(errno));
  return (-1);
 }

 if (strcmp(sfs.f_fstypename, MNTTYPE_ZFS) != 0) {
  (void) fprintf(stderr, "invalid path '%s': not a ZFS "
      "filesystem\n", fullpath);
  return (-1);
 }

 if (strncmp(fullpath, sfs.f_mntonname, strlen(sfs.f_mntonname)) != 0) {
  (void) fprintf(stderr, "invalid path '%s': mountpoint "
      "doesn't match path\n", fullpath);
  return (-1);
 }

 (void) strcpy(dataset, sfs.f_mntfromname);

 rel = fullpath + strlen(sfs.f_mntonname);
 if (rel[0] == '/')
  rel++;
 (void) strcpy(relpath, rel);

 return (0);
}
