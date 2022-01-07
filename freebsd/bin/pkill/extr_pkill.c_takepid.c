
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int BUFSIZ ;
 scalar_t__ EWOULDBLOCK ;
 int LOCK_EX ;
 int LOCK_NB ;
 long MAX_PID ;
 long MIN_PID ;
 int STATUS_ERROR ;
 int err (int ,char*,char const*) ;
 scalar_t__ errno ;
 int errx (int ,char*,char const*) ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 int * fgets (char*,int,int *) ;
 int fileno (int *) ;
 scalar_t__ flock (int ,int) ;
 int * fopen (char const*,char*) ;
 int isspace (unsigned char) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static int
takepid(const char *pidfile, int pidfilelock)
{
 char *endp, line[BUFSIZ];
 FILE *fh;
 long rval;

 fh = fopen(pidfile, "r");
 if (fh == ((void*)0))
  err(STATUS_ERROR, "Cannot open pidfile `%s'", pidfile);

 if (pidfilelock) {




  if (flock(fileno(fh), LOCK_EX | LOCK_NB) == 0) {
   (void)fclose(fh);
   errx(STATUS_ERROR, "File '%s' can be locked", pidfile);
  } else {
   if (errno != EWOULDBLOCK) {
    errx(STATUS_ERROR,
        "Error while locking file '%s'", pidfile);
   }
  }
 }

 if (fgets(line, sizeof(line), fh) == ((void*)0)) {
  if (feof(fh)) {
   (void)fclose(fh);
   errx(STATUS_ERROR, "Pidfile `%s' is empty", pidfile);
  }
  (void)fclose(fh);
  err(STATUS_ERROR, "Cannot read from pid file `%s'", pidfile);
 }
 (void)fclose(fh);

 rval = strtol(line, &endp, 10);
 if (*endp != '\0' && !isspace((unsigned char)*endp))
  errx(STATUS_ERROR, "Invalid pid in file `%s'", pidfile);
 else if (rval < MIN_PID || rval > MAX_PID)
  errx(STATUS_ERROR, "Invalid pid in file `%s'", pidfile);
 return (rval);
}
