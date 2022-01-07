
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ ENOENT ;
 int ENOTDIR ;
 int S_ISDIR (int ) ;
 scalar_t__ errno ;
 scalar_t__ mkdir (char*,int) ;
 int paxwarn (int,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strcspn (char*,char*) ;
 int strspn (char*,char*) ;
 int syswarn (int,int ,char*,char*) ;

__attribute__((used)) static int
mkpath(char *path)
{
 struct stat sb;
 char *slash;
 int done = 0;

 slash = path;

 while (!done) {
  slash += strspn(slash, "/");
  slash += strcspn(slash, "/");

  done = (*slash == '\0');
  *slash = '\0';

  if (stat(path, &sb)) {
   if (errno != ENOENT || mkdir(path, 0777)) {
    paxwarn(1, "%s", path);
    return (-1);
   }
  } else if (!S_ISDIR(sb.st_mode)) {
   syswarn(1, ENOTDIR, "%s", path);
   return (-1);
  }

  if (!done)
   *slash = '/';
 }

 return (0);
}
