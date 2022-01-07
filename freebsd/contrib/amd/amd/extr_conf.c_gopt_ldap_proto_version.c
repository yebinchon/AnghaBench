
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ldap_proto_version; } ;





 int LDAP_VERSION_MAX ;
 int fprintf (int ,char*,...) ;
 TYPE_1__ gopt ;
 int stderr ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
gopt_ldap_proto_version(const char *val)
{
  fprintf(stderr, "conf: ldap_proto_version option ignored.  No LDAP support available.\n");
  return 1;

}
