
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ EBUSY ;
 scalar_t__ EEXIST ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOTEMPTY ;
 scalar_t__ EROFS ;
 int XFREE (char*) ;
 int XLOG_ERROR ;
 int dlog (char*,char*) ;
 scalar_t__ errno ;
 int plog (int ,char*,char*) ;
 scalar_t__ rmdir (char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strrchr (char*,char) ;
 char* xstrdup (char*) ;

void
rmdirs(char *dir)
{
  char *xdp = xstrdup(dir);
  char *dp;

  do {
    struct stat stb;





    if (stat(xdp, &stb) == 0 && (stb.st_mode & 0200) == 0) {
      if (rmdir(xdp) < 0) {
 if (errno != ENOTEMPTY &&
     errno != EBUSY &&
     errno != EEXIST &&
     errno != EROFS &&
     errno != EINVAL)
   plog(XLOG_ERROR, "rmdir(%s): %m", xdp);
 break;
      } else {
 dlog("rmdir(%s)", xdp);
      }
    } else {
      break;
    }

    dp = strrchr(xdp, '/');
    if (dp)
      *dp = '\0';
  } while (dp && dp > xdp);

  XFREE(xdp);
}
