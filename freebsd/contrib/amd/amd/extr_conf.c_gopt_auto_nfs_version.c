
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int nfs_dispatcher ;
 int nfs_program_2 ;
 int nfs_program_3 ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
gopt_auto_nfs_version(const char *val)
{
  if (strcmp(val, "2") == 0)
    nfs_dispatcher = nfs_program_2;
  else if (strcmp(val, "3") == 0)
    nfs_dispatcher = nfs_program_3;
  else {
    fprintf(stderr, "conf: bad auto nfs version : \"%s\"\n", val);
    return 1;
  }
  return 0;
}
