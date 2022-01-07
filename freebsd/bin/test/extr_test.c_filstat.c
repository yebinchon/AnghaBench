
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; int st_gid; int st_uid; int st_size; } ;
typedef int off_t ;
typedef enum token { ____Placeholder_token } token ;
 int F_OK ;
 int R_OK ;
 int S_ISBLK (int) ;
 int S_ISCHR (int) ;
 int S_ISDIR (int) ;
 int S_ISFIFO (int) ;
 int S_ISGID ;
 int S_ISLNK (int) ;
 int S_ISREG (int) ;
 int S_ISSOCK (int) ;
 int S_ISUID ;
 int S_ISVTX ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int W_OK ;
 int X_OK ;
 int eaccess (char*,int ) ;
 int getegid () ;
 int geteuid () ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static int
filstat(char *nm, enum token mode)
{
 struct stat s;

 if (mode == 130 ? lstat(nm, &s) : stat(nm, &s))
  return 0;

 switch (mode) {
 case 136:
  return (eaccess(nm, R_OK) == 0);
 case 128:
  return (eaccess(nm, W_OK) == 0);
 case 141:

  if (eaccess(nm, X_OK) != 0)
   return 0;
  if (S_ISDIR(s.st_mode) || geteuid() != 0)
   return 1;
  return (s.st_mode & (S_IXUSR | S_IXGRP | S_IXOTH)) != 0;
 case 140:
  return (eaccess(nm, F_OK) == 0);
 case 135:
  return S_ISREG(s.st_mode);
 case 142:
  return S_ISDIR(s.st_mode);
 case 143:
  return S_ISCHR(s.st_mode);
 case 144:
  return S_ISBLK(s.st_mode);
 case 139:
  return S_ISFIFO(s.st_mode);
 case 133:
  return S_ISSOCK(s.st_mode);
 case 130:
  return S_ISLNK(s.st_mode);
 case 131:
  return (s.st_mode & S_ISUID) != 0;
 case 134:
  return (s.st_mode & S_ISGID) != 0;
 case 132:
  return (s.st_mode & S_ISVTX) != 0;
 case 137:
  return s.st_size > (off_t)0;
 case 129:
  return s.st_uid == geteuid();
 case 138:
  return s.st_gid == getegid();
 default:
  return 1;
 }
}
