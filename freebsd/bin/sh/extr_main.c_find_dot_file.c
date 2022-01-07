
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISREG (int ) ;
 char* padvance (char const**,char const**,char*) ;
 char* pathval () ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strchr (char*,char) ;
 int stunalloc (char*) ;

__attribute__((used)) static char *
find_dot_file(char *basename)
{
 char *fullname;
 const char *opt;
 const char *path = pathval();
 struct stat statb;


 if( strchr(basename, '/'))
  return basename;

 while ((fullname = padvance(&path, &opt, basename)) != ((void*)0)) {
  if ((stat(fullname, &statb) == 0) && S_ISREG(statb.st_mode)) {




   return fullname;
  }
  stunalloc(fullname);
 }
 return basename;
}
