
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpfile ;
typedef int FILE ;


 int ENAMETOOLONG ;
 int ENOENT ;
 int EOPNOTSUPP ;
 char* FILE_HEADER ;
 int LOCK_EX ;
 int LOCK_UN ;
 int PATH_MAX ;
 int assert (int) ;
 int errno ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int ferror (int *) ;
 int fflush (int *) ;
 int fileno (int *) ;
 int flock (int,int ) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,char const*,...) ;
 int mkstemp (char*) ;
 int rename (char*,char const*) ;
 int restart_mountd () ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;
 char* translate_opts (char const*) ;
 int unlink (char*) ;
 char* zgetline (int *,char const*) ;

__attribute__((used)) static int
fsshare_main(const char *file, const char *mountpoint, const char *shareopts,
    int share)
{
 char tmpfile[PATH_MAX];
 char *line;
 FILE *newfd, *oldfd;
 int fd, error;

 newfd = oldfd = ((void*)0);
 error = 0;





 if (strlcpy(tmpfile, file, sizeof(tmpfile)) >= sizeof(tmpfile))
  return (ENAMETOOLONG);
 if (strlcat(tmpfile, ".XXXXXXXX", sizeof(tmpfile)) >= sizeof(tmpfile))
  return (ENAMETOOLONG);
 fd = mkstemp(tmpfile);
 if (fd == -1)
  return (errno);




 error = flock(fd, LOCK_EX);
 assert(error == 0 || (error == -1 && errno == EOPNOTSUPP));
 newfd = fdopen(fd, "r+");
 assert(newfd != ((void*)0));

 oldfd = fopen(file, "r");
 if (oldfd == ((void*)0)) {
  if (share) {
   if (errno != ENOENT) {
    error = errno;
    goto out;
   }
  } else {

   if (errno == ENOENT)
    errno = 0;
   error = errno;
   goto out;
  }
 } else {
  error = flock(fileno(oldfd), LOCK_EX);
  assert(error == 0 || (error == -1 && errno == EOPNOTSUPP));
  error = 0;
 }


 fprintf(newfd, "%s", FILE_HEADER);
 while (oldfd != ((void*)0) && (line = zgetline(oldfd, mountpoint)) != ((void*)0))
  fprintf(newfd, "%s\n", line);
 if (oldfd != ((void*)0) && ferror(oldfd) != 0) {
  error = ferror(oldfd);
  goto out;
 }
 if (ferror(newfd) != 0) {
  error = ferror(newfd);
  goto out;
 }
 if (share) {
  fprintf(newfd, "%s\t%s\n", mountpoint,
      translate_opts(shareopts));
 }

out:
 if (error != 0)
  unlink(tmpfile);
 else {
  if (rename(tmpfile, file) == -1) {
   error = errno;
   unlink(tmpfile);
  } else {
   fflush(newfd);



   restart_mountd();
  }
 }
 if (oldfd != ((void*)0)) {
  flock(fileno(oldfd), LOCK_UN);
  fclose(oldfd);
 }
 if (newfd != ((void*)0)) {
  flock(fileno(newfd), LOCK_UN);
  fclose(newfd);
 }
 return (error);
}
