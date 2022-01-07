
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mntent_t ;


 int XLOG_MAP ;
 char* amu_hasmntopt (int *,char*) ;
 char* hasmnteq (int *,char*) ;
 int plog (int ,char*,char*,...) ;
 long strtol (char*,char**,int ) ;

unsigned int
hasmntvalerr(mntent_t *mnt, char *opt, int *valp)
{
  char *str = amu_hasmntopt(mnt, opt);
  int err = 1;
  char *eq, *endptr;
  long int i;


  if (!str) {
    goto out;
  }

  eq = hasmnteq(mnt, opt);

  if (!eq) {
    plog(XLOG_MAP, "numeric option to \"%s\" missing", opt);
    goto out;
  }


  endptr = ((void*)0);
  i = strtol(eq, &endptr, 0);
  if (!endptr ||
      (endptr != eq && (*endptr == ',' || *endptr == '\0'))) {
    *valp = (int) i;
    err = 0;
  } else {

    plog(XLOG_MAP, "invalid numeric option in \"%s\": \"%s\"", opt, str);

  }

 out:
  return err;
}
