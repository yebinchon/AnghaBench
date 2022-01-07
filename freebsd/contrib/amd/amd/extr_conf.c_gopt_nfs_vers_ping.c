
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nfs_vers_ping; } ;


 int atoi (char const*) ;
 int fprintf (int ,char*,char const*) ;
 TYPE_1__ gopt ;
 int stderr ;

__attribute__((used)) static int
gopt_nfs_vers_ping(const char *val)
{
  int i = atoi(val);

  if (i == 2 || i == 3 || i == 4) {
    gopt.nfs_vers_ping = i;
    return 0;
  }
  fprintf(stderr, "conf: illegal nfs_vers_ping \"%s\"\n", val);
  return 1;
}
