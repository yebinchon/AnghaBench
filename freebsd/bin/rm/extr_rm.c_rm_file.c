
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; int st_flags; } ;


 int EEXIST ;
 scalar_t__ ENOENT ;
 int SF_APPEND ;
 int SF_IMMUTABLE ;
 int S_IFWHT ;
 int S_IRUSR ;
 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISWHT (int) ;
 int S_IWUSR ;
 int UF_APPEND ;
 int UF_IMMUTABLE ;
 scalar_t__ Wflag ;
 int check (char*,char*,struct stat*) ;
 int dflag ;
 scalar_t__ errno ;
 int eval ;
 int fflag ;
 scalar_t__ info ;
 int lchflags (char*,int) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int printf (char*,char*) ;
 int rmdir (char*) ;
 int strerror (int ) ;
 int uid ;
 int undelete (char*) ;
 int unlink (char*) ;
 scalar_t__ vflag ;
 int warn (char*,char*) ;
 int warnx (char*,char*,...) ;

__attribute__((used)) static void
rm_file(char **argv)
{
 struct stat sb;
 int rval;
 char *f;





 while ((f = *argv++) != ((void*)0)) {

  if (lstat(f, &sb)) {
   if (Wflag) {
    sb.st_mode = S_IFWHT|S_IWUSR|S_IRUSR;
   } else {
    if (!fflag || errno != ENOENT) {
     warn("%s", f);
     eval = 1;
    }
    continue;
   }
  } else if (Wflag) {
   warnx("%s: %s", f, strerror(EEXIST));
   eval = 1;
   continue;
  }

  if (S_ISDIR(sb.st_mode) && !dflag) {
   warnx("%s: is a directory", f);
   eval = 1;
   continue;
  }
  if (!fflag && !S_ISWHT(sb.st_mode) && !check(f, f, &sb))
   continue;
  rval = 0;
  if (!uid && !S_ISWHT(sb.st_mode) &&
      (sb.st_flags & (UF_APPEND|UF_IMMUTABLE)) &&
      !(sb.st_flags & (SF_APPEND|SF_IMMUTABLE)))
   rval = lchflags(f, sb.st_flags & ~(UF_APPEND|UF_IMMUTABLE));
  if (rval == 0) {
   if (S_ISWHT(sb.st_mode))
    rval = undelete(f);
   else if (S_ISDIR(sb.st_mode))
    rval = rmdir(f);
   else
    rval = unlink(f);
  }
  if (rval && (!fflag || errno != ENOENT)) {
   warn("%s", f);
   eval = 1;
  }
  if (vflag && rval == 0)
   (void)printf("%s\n", f);
  if (info && rval == 0) {
   info = 0;
   (void)printf("%s\n", f);
  }
 }
}
