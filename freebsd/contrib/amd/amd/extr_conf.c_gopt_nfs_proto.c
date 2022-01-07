
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nfs_proto; } ;


 scalar_t__ STREQ (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 TYPE_1__ gopt ;
 int stderr ;
 int xstrdup (char const*) ;

__attribute__((used)) static int
gopt_nfs_proto(const char *val)
{
  if (STREQ(val, "udp") || STREQ(val, "tcp")) {
    gopt.nfs_proto = xstrdup(val);
    return 0;
  }
  fprintf(stderr, "conf: illegal nfs_proto \"%s\"\n", val);
  return 1;
}
