
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;


 scalar_t__ EEXIST ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int PATH_MAX ;
 scalar_t__ errno ;
 int gethrtime () ;
 int open (char*,int,int) ;
 int snprintf (char*,int ,char*,char const*,int ) ;
 int unlink (char*) ;
 int uu_free (char*) ;
 char* uu_zalloc (int ) ;

int
uu_open_tmp(const char *dir, uint_t uflags)
{
 int f;
 char *fname = uu_zalloc(PATH_MAX);

 if (fname == ((void*)0))
  return (-1);

 for (;;) {
  (void) snprintf(fname, PATH_MAX, "%s/uu%lld", dir, gethrtime());

  f = open(fname, O_CREAT | O_EXCL | O_RDWR, 0600);

  if (f >= 0 || errno != EEXIST)
   break;
 }

 if (f >= 0)
  (void) unlink(fname);

 uu_free(fname);

 return (f);
}
